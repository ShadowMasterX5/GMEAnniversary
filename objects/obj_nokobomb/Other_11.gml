/// @description Turn into a holdable nokobomb

with (instance_create(x,y,obj_nokobomb_down)) {

    //Hereby facing direction
    dir = other.xscale;
}

//Destroy
instance_destroy();

