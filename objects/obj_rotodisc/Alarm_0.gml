/// @description Leave a trail

//Repeat
alarm[0] = 2;

//Leave a trail.
with (instance_create(x,y,obj_rotodisc_trail)) 
    image_index = 0+(other.image_index*2);

