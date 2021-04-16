/// @description Draw the door

//Set the palette
pal_swap_set(spr_palette_door, 1);

//Inherit draw event
event_inherited();

//Reset the palette
pal_swap_reset();

