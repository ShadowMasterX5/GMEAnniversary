/// @description Leave a trail

with (instance_create(x, y, obj_cannonball_spike_trail)) {

    image_index = other.image_index;
    depth = other.depth+1;
}
alarm[1] = 2;

