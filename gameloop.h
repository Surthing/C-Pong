#ifndef GAMELOOP_H
#define GAMELOOP_H

//structs für pointer und variabel ändern
typedef struct {
    int x, y;
    bool is_alternate;
} Paddle;

typedef struct {
    int x, y, dx, dy;
    int old_x, old_y; 
} Ball;
//alle funktionen aufzählen
void render_frame();
bool update_state();
void game_loop();
double get_elapsed();
void msleep(float ms);
void drawPaddle(Paddle *paddle);
void drawBall(Ball *ball);
void moveBall(Ball *ball);
void checkforCollisionsPaddle(Ball *ball, Paddle *left_paddle, Paddle *right_paddle);
void cleanup_ncurses();
void init_game_canvas();
void init_ncurses();
void init_sprites();
void init_intro_canvas();
void render_intro();
void render_game();
void disable_sprites();
#endif // GAMELOOP_H

