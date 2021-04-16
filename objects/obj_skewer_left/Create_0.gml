/// @description Left Skewer

//Do not animate
image_speed = 0;
image_index = 0;

//Make it solid
mysolid = instance_create(x,y,obj_solid);
with (mysolid) {

    image_yscale = 4;
}

//Create trunk
with (instance_create(x-48,y,obj_skewer_trunk_left)) parent = other.id;

