/// @description Spit fireballs

//Set the spitting sprite
sprite_index = spr_volcanolotus_c;

//Animate
image_speed = 0.1;

//Prepare another batch
alarm[2] = 60;

//Spit fireballs
with (instance_create(x,y+4,obj_lotusball))
    motion_set(30, 1);
with (instance_create(x,y+4,obj_lotusball))
    motion_set(60, 0.75);
with (instance_create(x,y+4,obj_lotusball))
    motion_set(120, 0.75);
with (instance_create(x,y+4,obj_lotusball))
    motion_set(150, 1);

