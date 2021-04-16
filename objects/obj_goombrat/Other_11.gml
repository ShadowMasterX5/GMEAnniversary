/// @description Turn into a persimmon pancake

with (instance_create(x,y,obj_stomped)) {

    sprite_index = spr_goombrat_sq;
    image_xscale = other.xscale;
}
instance_destroy();

