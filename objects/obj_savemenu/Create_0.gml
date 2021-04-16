/// @description The Map Save Menu.

//Play a sound
audio_play_sound(snd_message,false,0);

//Make sure it doesn't animate
image_speed = 0;
image_index = 0;

//Set the choice to the first option
choice = 0;

//The menu has just opened up.
ready = 0;

//Make the scaling start at 0
scale = 0;

//Is the map quittable?
quitable = 0;

//Clear same stuff
io_clear();

//Set the color
draw_set_color(c_white);

//Set the font
font = global.font_message;

//Texts for the menu
menu[0] = "Save and Continue";
menu[1] = "Save and Quit";
menu[2] = "Continue without Saving";

