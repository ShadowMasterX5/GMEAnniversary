/// @description Skewer

//Do not animate
image_speed = 0;
image_index = 0;

//Make it solid
mysolid = instance_create(x,y,obj_solid);
with (mysolid) {

    image_xscale = 4;
}

//Create trunk
with (instance_create(x,y+48,obj_skewer_trunk)) parent = other.id;

