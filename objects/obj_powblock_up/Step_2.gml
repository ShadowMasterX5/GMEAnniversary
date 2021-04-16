/// @description Pow block logic (Player + obj_physicsparent Physics)
/// @param Player + obj_physicsparent Physics

//Make sure is not held
if (!held) {

    //Moving platform collision
    event_user(5);
    
    //Destroy in contact with lava
    if (collision_rectangle(bbox_left,bbox_bottom+6,bbox_right,bbox_bottom+7,obj_lava,0,0)) {
    
        //Play 'Podoboo' sound
        audio_play_sound(snd_podoboo, 0, false);
        
        //Go poof
        instance_create((bbox_left+bbox_right)/2-8,(bbox_top+bbox_bottom)/2-8,obj_smoke);
        with (instance_create((bbox_left+bbox_right)/2-8,(bbox_top+bbox_bottom)/2-8,obj_smoke))    
            sprite_index = spr_splash_lava;
        
        //Destroy
        instance_destroy();
    }
    
    //Move in contact with a left-moving conveyor belt
    lconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_l,0,0);
    if ((lconv) && (lconv.image_speed != 0)) {
    
        if (!collision_rectangle(bbox_left-1,bbox_top+4,bbox_left,bbox_bottom-1,obj_solid,1,0))
            x -= 0.75;
    }
    
    //Move in contact with a right-moving conveyor belt
    rconv = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_conveyor_r,0,0);
    if ((rconv) && (rconv.image_speed != 0)) {
    
        if (!collision_rectangle(bbox_right,bbox_top+4,bbox_right+1,bbox_bottom-1,obj_solid,1,0))
            x += 0.75;
    }
}

//Otherwise, inherit default End Step event and make the solidtop go away
else
    event_inherited();

