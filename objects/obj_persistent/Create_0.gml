/// @description Gatete Mario Engine: Anniversary Edition Persistent Object

/*
//      IMPORTANT NOTE:
//      If the game detects more than one instance of this object, the game will return an error and it will become unplayable.
//      
//      Please, double check every level before releasing your game.
*/

//Initialize palette system
pal_swap_init_system(shd_palette_swapper);

//Turn enemies into coins? (0: Disabled / 1: Enabled)
global.enemy_to_coin = 1;

//Flight time (In seconds, how much the player should be able to fly.)
global.flighttime = 4;

//Health Mode (0: Disabled / 1: Enabled)
global.healthmode = 0;

//Cat climb time (In seconds, how much the player should be able to climb up a wall.)
global.cattime = 3;

//Current file
global.file = 0;

//Game width
global.gw = 384;

//Game height
global.gh = 216;

//Initialize global variables
init_globals();
got = 0;
total = 0;

//Lives to give
addlives = 0;

//Screenshot of the game, if it exists
back = -1;

//Screen shaking
port_x = 0;
port_y = 0;

//Is the game being restarted
restart = 0;

//Show the FPS?
showfps = false;

//Gamepad variables
gamepad_check = 0;
message = "";

//Gamepad left stick
leftstick[0] = 0;
leftstick[1] = 0;
leftstick[2] = 0;
leftstick[3] = 0;

//Epsilon value for floating point numbers
math_set_epsilon(0.00001);

//Data structure for picked up 3up moons
global.moons = ds_map_create();

//Regular Numbers
global.numbers_w = font_add_sprite_ext(spr_numbers,"0123456789",0,-1);

//Regular Gold Numbers
global.numbers_g = font_add_sprite_ext(spr_numbersgold,"0123456789",0,-1);

//Regular Black Numbers
global.numbers_b = font_add_sprite_ext(spr_numbersblack,"0123456789",0,-1);

//Message Font
global.font_message = font_add_sprite(spr_hud_font,ord("!"),0,0);

//Interface font
global.font_interface = font_add_sprite(spr_hud_font_interface,ord("!"),0,0);

//Disable application surface automatic drawing
application_surface_draw_enable(0);

/* */
/*  */
