/// @description Animate

//Inherit event
event_inherited();

//Animate if moving
if (movenow == 0)
    sprite_index = spr_hotfoot;
else
    sprite_index = spr_hotfoot_walk;

