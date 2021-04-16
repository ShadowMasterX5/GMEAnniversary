/// @description Turn solid

//If the block is not solid
if (sprite_index == spr_eoutline) {

    //Make it solid
    mysolid = instance_create(x,y,obj_solid);
    
    //Change the sprite
    sprite_index = spr_eblock;
    image_speed = 0;
    image_index = 0;
}

