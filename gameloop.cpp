#include <ncurses.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include "gfx.h"
#include "gridfont.h"
#include "sound.h"
#include "gameloop.h"
#include "scrollarea.h"

#define HEIGHT 20
#define WIDTH 40
#define PADDLE_HEIGHT 6
#define BALL_DELAY 800000

#define GAME_INTRO 0
#define GAME_LOOP 1
#define GAME_OVER_RIGHT 2
#define GAME_OVER_LEFT 3

#define MAX_SCORE 12

#define LEFT_PADDLE_SPRITE 0
#define RIGHT_PADDLE_SPRITE 1

Paddle left_paddle, right_paddle;
Ball ball;

WINDOW *game_win;

int state = GAME_INTRO;
double elapsed = 0;
int frame = 0;
float fps = 20.0;
int left_score = 0;
int right_score = 0;

void init_ncurses() {
    initscr();
    cbreak();
    noecho();
    keypad(stdscr, TRUE);
    curs_set(0);
}

void cleanup_ncurses() {
    endwin();
}

void init_game_canvas() {
    set_area_size(WIDTH, HEIGHT);
    set_window_size(WIDTH, HEIGHT);
    set_window_border(ACS_CKBOARD);
    set_area_border(ACS_CKBOARD);
    set_drawing_window(stdscr);
}

void init_sprites() {
    int paddle_width = 1;
    int paddle_height = PADDLE_HEIGHT;
    int paddle_data[PADDLE_HEIGHT];

    for (int i = 0; i < PADDLE_HEIGHT; i++) {
        paddle_data[i] = '#';
    }

    // linkes sprite
    enable_sprite(LEFT_PADDLE_SPRITE, paddle_width, paddle_height, false, false);
    set_sprite_data(LEFT_PADDLE_SPRITE, paddle_width, paddle_height, paddle_data);
    set_sprite_position(LEFT_PADDLE_SPRITE, left_paddle.x, left_paddle.y);
   
    // rechtes sprite
    enable_sprite(RIGHT_PADDLE_SPRITE, paddle_width, paddle_height, false, false);
    set_sprite_data(RIGHT_PADDLE_SPRITE, paddle_width, paddle_height, paddle_data);
    set_sprite_position(RIGHT_PADDLE_SPRITE, right_paddle.x, right_paddle.y);
}


void render_frame() {
    clear_area(' ');
    if (state == GAME_INTRO) {
         char text[50];
        sprintf(text, "Welcome to %s", "Pong");

        // Text in der Mitte des Bildschirms anzeigen
        render_text_area((WIDTH - strlen(text)) / 2, HEIGHT / 2, text);
    } else if (state == GAME_LOOP) {
        // Debugging-Ausgabe
        //  mvprintw(0, 0, "Left Paddle: (%d, %d)", left_paddle.x, left_paddle.y);
       // mvprintw(1, 0, "Right Paddle: (%d, %d)", right_paddle.x, right_paddle.y);

        // Position der Sprites aktualisieren
        set_sprite_position(LEFT_PADDLE_SPRITE, left_paddle.x, left_paddle.y);
        set_sprite_position(RIGHT_PADDLE_SPRITE, right_paddle.x, right_paddle.y);

        // Ball zeichnen
        drawBall(&ball);

        // Score anzeigen
        char score[20];
        sprintf(score, "Score: %d - %d", left_score, right_score);
        render_text_area((WIDTH - strlen(score)) / 2, 1, score);
        
        const char* name1 = "Mike Danishjo";
        const char* name2 = "Erfan Al Hadi";
        const char* name3 = "Bartosz Krasnopolski";
        render_text_area((WIDTH - strlen(name1)) / 2, HEIGHT / 2 - 1, name1);
        render_text_area((WIDTH - strlen(name2)) / 2, HEIGHT / 2 + 3, name2);
        render_text_area((WIDTH - strlen(name3)) / 2, HEIGHT - 3, name3);
   } else if (state == GAME_OVER_LEFT) {
        // Game over screen for the left player
        const char text[] = "Game Over - Left Player Wins";
        render_text_area((WIDTH - strlen(text)) / 2, HEIGHT / 2, text);
    } else if (state == GAME_OVER_RIGHT) {
        // Game over screen for the right player
        const char text[] = "Game Over - Right Player Wins";
        render_text_area((WIDTH - strlen(text)) / 2, HEIGHT / 2, text);
    }

    redraw_window(0, 0);
}

bool update_state() {

    if (state == GAME_INTRO) {
           sound_play("intro.wav");
        if (get_elapsed() > 5) {
            state = GAME_LOOP;
            
            clear_area(' ');
        }
    } else if (state == GAME_LOOP) {
        int c = getch();
        if (c == 'q') {
            sound_stop(0);
            sound_exit();
            return true;
        } else if (c == 'w') {
            if (left_paddle.y > 0) {
                left_paddle.y--;
            }
        } else if (c == 's') {
            if (left_paddle.y < HEIGHT - PADDLE_HEIGHT) {
                left_paddle.y++;
            }
        } else if (c == KEY_UP) {
            if (right_paddle.y > 0) {
                right_paddle.y--;
            }
        } else if (c == KEY_DOWN) {
            if (right_paddle.y < HEIGHT - PADDLE_HEIGHT) {
                right_paddle.y++;
            }
        }

        moveBall(&ball);
        checkforCollisionsPaddle(&ball, &left_paddle, &right_paddle);
        
        if (left_score >= MAX_SCORE) {
            state = GAME_OVER_LEFT;
        } else if (right_score >= MAX_SCORE) {
            state = GAME_OVER_RIGHT;
        }
    }
    
    
   
    return false;
}

void game_loop() {
    float dt = 1.0 / fps;
    float ms = dt * 1000;
    
    init_game_canvas(); 
    init_sprites();

   
    left_paddle.x = 1;
    left_paddle.y = (HEIGHT - PADDLE_HEIGHT) / 2;
    left_paddle.is_alternate = false; 
    right_paddle.x = WIDTH - 2;
    right_paddle.y = (HEIGHT - PADDLE_HEIGHT) / 2;
    right_paddle.is_alternate = false; 


    ball.x = WIDTH / 2;
    ball.y = HEIGHT / 2;
    ball.dx = (rand() % 2 == 0) ? 1 : -1;
    ball.dy = (rand() % 2 == 0) ? 1 : -1;
    ball.old_x = ball.x;
    ball.old_y = ball.y;
 
    
    

    
    while (true) {
    
      
        render_frame();
        frame++;
        elapsed += dt;
        bool finish = update_state();
        msleep(ms);
        if (finish) break;
    }
}	

double get_elapsed() {
    return elapsed;
}

void msleep(float ms) {
    int us = ms * 1000;
    usleep(us);
}

void drawBall(Ball *ball) {
    //alten ball löschen
    set_cell(ball->old_x, ball->old_y, ' ');

    set_cell(ball->x, ball->y, 'O');

    // neu in alt machen, damit alte wieder gelöscht wird
    ball->old_x = ball->x;
    ball->old_y = ball->y;
}

void moveBall(Ball *ball) {
    ball->x += ball->dx;
    ball->y += ball->dy;
    if (ball->y <= 0 || ball->y >= HEIGHT - 2) {
        ball->dy = -ball->dy;
    }
    if (ball->x <= 0) {
        right_score++;
        sound_play("point.wav");
        ball->x = WIDTH / 2;
        //entweder der ball geht zufallszahl gerade links oder ungerade rechts
        ball->dx = (rand() % 2 == 0) ? 1 : -1;
        ball->dy = (rand() % 2 == 0) ? 1 : -1;
        ball->old_x = ball->x;
        ball->old_y = ball->y;
    }
    if (ball->x >= WIDTH - 1) {
        left_score++;
        sound_play("point.wav");
        ball->x = WIDTH / 2;
        ball->y = HEIGHT / 2;
        ball->dx = (rand() % 2 == 0) ? 1 : -1;
        ball->dy = (rand() % 2 == 0) ? 1 : -1;
        ball->old_x = ball->x;
        ball->old_y = ball->y;
    }
}

void checkforCollisionsPaddle(Ball *ball, Paddle *left_paddle, Paddle *right_paddle) {
    int new_paddle_data[PADDLE_HEIGHT];
    int original_paddle_data[PADDLE_HEIGHT];

    for (int i = 0; i < PADDLE_HEIGHT; i++) {
        new_paddle_data[i] = '+'; // neue
        original_paddle_data[i] = '#'; // alte
    }

    if (ball->x == left_paddle->x + 1) {
        if (ball->y >= left_paddle->y && ball->y <= left_paddle->y + PADDLE_HEIGHT - 1) {
            sound_play("boing.wav");
            ball->dx = -ball->dx;
            left_paddle->is_alternate = !left_paddle->is_alternate; //boolean umstellen
            if (left_paddle->is_alternate) {
                set_sprite_data(LEFT_PADDLE_SPRITE, 1, PADDLE_HEIGHT, new_paddle_data);
            } else {
                set_sprite_data(LEFT_PADDLE_SPRITE, 1, PADDLE_HEIGHT, original_paddle_data);
            }
        }
    }

    if (ball->x == right_paddle->x - 1) {
        if (ball->y >= right_paddle->y && ball->y <= right_paddle->y + PADDLE_HEIGHT - 1) {
            sound_play("boing.wav");
            ball->dx = -ball->dx;
            right_paddle->is_alternate = !right_paddle->is_alternate; //auch hier umschalten
            if (right_paddle->is_alternate) {
                set_sprite_data(RIGHT_PADDLE_SPRITE, 1, PADDLE_HEIGHT, new_paddle_data);
            } else {
                set_sprite_data(RIGHT_PADDLE_SPRITE, 1, PADDLE_HEIGHT, original_paddle_data);
            }
        }
    }
}

