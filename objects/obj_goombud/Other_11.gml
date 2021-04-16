/// @description Turn into a holdable goombud

with (instance_create(x,y,obj_galoomba_down)) {

    //Hereby sprite
    sprite_index = spr_goombud_down;

    //Hereby facing direction
    dir = other.xscale;
}

//Destroy
instance_destroy();

