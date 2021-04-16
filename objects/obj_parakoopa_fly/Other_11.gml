/// @description Make the koopa lose his wings

with (instance_create(x,y,obj_koopa)) {

    //Set the horizontal speed
    hspeed = 0.5*sign(other.xscale);
}

//Destroy
instance_destroy();

