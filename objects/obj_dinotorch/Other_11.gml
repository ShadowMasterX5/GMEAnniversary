/// @description Turn into a pancake

with (instance_create(x,y,obj_stomped)) {

    sprite_index = spr_dinotorch_sq;
    image_xscale = other.xscale;
}
instance_destroy();

