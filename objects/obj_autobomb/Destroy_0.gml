/// @description Turn the rider into a regular shyguy

if (instance_exists(rider)) {

    //Create a normal shyguy
    with (instance_create(rider.x, rider.y, obj_shyguy)) {
    
        hspeed = 0.5*sign(other.xscale);
    }
    
    //Destroy rider
    with (rider) instance_destroy();
}


