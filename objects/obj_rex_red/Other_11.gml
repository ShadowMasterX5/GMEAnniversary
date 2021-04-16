/// @description Squash or turn the rex into a pancake

//If the rex is not the half of his height, flat him
if (state == 0) {

    //Set the sprite
    sprite_index = spr_rex_red2;
    
    //Double hspeed
    hspeed = hspeed*2;
    
    //Set state
    state = 1;
}

//Otherwise, turn into a pancake
else {

    with (instance_create(x,y,obj_stomped)) {
    
        sprite_index = spr_rex_red_sq;
        image_xscale = other.xscale;
    }
    instance_destroy();
}

