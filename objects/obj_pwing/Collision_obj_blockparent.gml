/// @description Bumped by a block

if (other.vspeed < 0) {

    //Turn into a floating leaf
    instance_create(x,y,obj_pickup_pwing);
    instance_destroy();
}

