	#include <ncurses.h>
#include <string.h>
#include "gfx.h"
#include "gridfont.h"
#include "sound.h"
#include "gameloop.h"

int main(int argc, char *argv[])
{ 

   //erstmal alles initialisieren
   init_ncurses();
   init_game_canvas();
   init_gfx();
   init_color();   
   sound_init();
   //gameloop ausführen
   game_loop();   
   refresh();   
   //exiten
   sound_exit(); 
   exit_gfx();
   
   cleanup_ncurses();
   
   return(0);
}
