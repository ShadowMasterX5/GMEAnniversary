/// @description Turn into a holdable mechakoopa

with (instance_create(x,y,obj_mechakoopa_down)) {

    //Hereby facing direction
    dir = other.xscale;
}

//Destroy
instance_destroy();

