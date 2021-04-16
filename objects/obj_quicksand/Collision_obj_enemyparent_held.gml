/// @description Kill instantly

if (other.gravity > 0) {

    with (other) {
    
        //Create dead object
        imdead = instance_create(x,y,obj_enemy_dead);
        
        //Make the dead object hereby the sprite
        imdead.sprite_index = sprite_index;
        
        //Make the dead object hereby the frame
        imdead.image_index = image_index;
        
        //Make the dead object hereby the scale
        imdead.image_xscale = dir;
        
        //Do NOT apply vertical speed
        imdead.hspeed = 0;
        imdead.vspeed = 0;
        
        //Destroy
        instance_destroy();
    }
}

