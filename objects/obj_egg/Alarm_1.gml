/// @description Break it

///Create egg bits
with (instance_create(x+8,y+8,obj_shard)) {

    //Set shard sprite
    sprite_index = spr_egg_bits;

    //Set motion
    motion_set(45,6);    
    
    //Set frame
    image_speed = 0;
    image_index = 3;
}
with (instance_create(x+8,y+8,obj_shard)) {

    //Set shard sprite
    sprite_index = spr_egg_bits;

    //Set motion
    motion_set(60,6);    
    
    //Set frame
    image_speed = 0;
    image_index = 1;
}
with (instance_create(x+8,y+8,obj_shard)) {

    //Set shard sprite
    sprite_index = spr_egg_bits;

    //Set motion
    motion_set(120,6);    
    
    //Set frame
    image_speed = 0;
    image_index = 0;
}
with (instance_create(x+8,y+8,obj_shard)) {

    //Set shard sprite
    sprite_index = spr_egg_bits;

    //Set motion
    motion_set(135,6);    
    
    //Set frame
    image_speed = 0;
    image_index = 2;
}

//Make it invisible
visible = 0;

//A Yoshi has born
alarm[2] = 16;

//Create some smoke
instance_create(x,y,obj_smoke);

