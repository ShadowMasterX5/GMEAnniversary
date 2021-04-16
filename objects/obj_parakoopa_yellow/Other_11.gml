/// @description Make the koopa lose his wings

with (instance_create(x,y,obj_koopa_yellow)) {

    //Set the horizontal speed
    hspeed = 1*sign(other.xscale);
}

//Destroy
instance_destroy();

