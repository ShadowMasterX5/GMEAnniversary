/// @description Turn into a holdable galoomba

with (instance_create(x,y,obj_galoomba_down)) {

    //Hereby facing direction
    dir = other.xscale;
}

//Destroy
instance_destroy();

