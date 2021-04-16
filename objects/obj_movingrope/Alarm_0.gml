/// @description Create the rope

rope = instance_create(x,y+14,obj_rope);
with (rope) {

    parent = other.id;
    image_yscale = other.ropelength;
}

