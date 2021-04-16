/// @description Bumped by a block

if (other.vspeed < 0) 
&& (bbox_bottom < other.yprevious+5) {

    //Turn into a floating leaf
    instance_create(x,y,obj_pickup_propeller);
    instance_destroy();
}

