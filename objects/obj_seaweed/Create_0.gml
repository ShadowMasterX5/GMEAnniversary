/// @description Seaweed

//Animate
image_speed = 0.15;

//If there's a seaweed above
if (!place_meeting(x,y-1,obj_seaweed))
    sprite_index = spr_seaweed;

