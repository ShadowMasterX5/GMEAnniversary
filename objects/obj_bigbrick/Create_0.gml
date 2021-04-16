/// @description A Brick

//Whether this block can be hit
ready = 0;

//Make it solid
mysolid = instance_create(x,y,obj_solid);
    mysolid.image_xscale = 2;
    mysolid.image_yscale = 2;

