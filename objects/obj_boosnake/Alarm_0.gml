/// @description Change frame

//Repeat process
alarm[0] = 7;

//Change frame
frame = !frame;

//Leave a trail
with (instance_create(x,y,obj_boosnake_trail)) {

    image_xscale = other.xscale;
    image_index = random(round(5));
}

