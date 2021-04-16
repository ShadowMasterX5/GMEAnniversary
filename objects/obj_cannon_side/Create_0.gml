/// @description Side Cannon

//Do not animate...
image_speed = 0;

//...but set the frame
if (place_snapped(32,16))
    image_index = 0;
else
    image_index = 1;

//Start shooting
alarm[0] = 90;

//Make this object solid
with (instance_create(x,y,obj_semisolid))
    image_xscale = 2;

