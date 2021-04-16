/// @description Make the walrus lose his wings

with (instance_create(x,y,obj_walrus)) {

    //Set the horizontal speed
    hspeed = 0.5*sign(other.xscale);
}

//Destroy
instance_destroy();

