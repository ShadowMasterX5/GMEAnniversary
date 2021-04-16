/// @description Destroy

//If this is a explosive barrel, explode
if (sprite_index == spr_barrel_tnt_roll) {

    instance_create(x, y, obj_explosion);
}
else {
    
    //With a newly created billy object
    with (instance_create(x+8, y+8, obj_billy_dead)) {
    
        //Set up the sprite
        sprite_index = spr_barrel_spin;
        
        //Set up the direction
        if (other.hspeed > 0)
            hspeed = -1;
        else
            hspeed = 1;
    }
}

//Destroy
instance_destroy();

