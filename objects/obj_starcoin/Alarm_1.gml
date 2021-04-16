/// @description Leave a trail

alarm[1] = 8;
with (instance_create(x+random(32),y+random(32),obj_smoke)) {

    //Set the sprite
    sprite_index = spr_boltspark;
    
    //Animate
    image_speed = 0.1;
}

