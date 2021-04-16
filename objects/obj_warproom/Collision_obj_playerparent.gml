/// @description Warp to another room

if (other.state == 3) {

    if (instance_number(obj_fadein) == 0)
        with (instance_create(0,0,obj_fadein)) target = other.myroom;
}

