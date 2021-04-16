/// @description Create a bubble effect if the player is swimming

alarm[8] = 45+random_range(-15, 15);
if (swimming)
    instance_create(x,bbox_top,obj_bubble);

