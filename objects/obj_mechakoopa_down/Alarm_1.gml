/// @description Wake up

with (instance_create(x,y,obj_mechakoopa)) {

    //Set the horizontal speed
    hspeed = 0.5*sign(other.dir);
}

//Destroy
instance_destroy();

