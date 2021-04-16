/// @description Quicksand

//Animate
image_speed = 0.15;

//Collision
mycol = instance_create(x, y+4, obj_semisolid);
with (mycol)
    image_xscale = other.sprite_width/16;

