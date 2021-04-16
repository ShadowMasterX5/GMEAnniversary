/// @description Turn into a holdable nokobombette

with (instance_create(x,y,obj_nokobomb_down)) {

    //Set sprite
    sprite_index = spr_nokobombette_bomb;

    //Hereby facing direction
    dir = other.xscale;
}

//Destroy
instance_destroy();

