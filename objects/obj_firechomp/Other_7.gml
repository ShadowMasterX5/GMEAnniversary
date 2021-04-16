/// @description Resume movement

if (sprite_index == spr_firechomp) {

    //Do not animate
    image_speed = 0;
    image_index = 2;
    
    //Resume movement
    alarm[1] = 16;
    
    //Play 'Podoboo' sound
    audio_play_sound(snd_podoboo,0,0);
    
    //Shoot a fireball towards Mario.
    myfire = instance_create(x,bbox_top+4,obj_firechomp_fire);
    with (myfire) {
    
        if (instance_exists(obj_playerparent))
            motion_set(point_direction(x,bbox_top+4,obj_playerparent.x,obj_playerparent.y),1.25);
        else
            motion_set(point_direction(x,bbox_top+4,obj_levelcontrol.x,obj_levelcontrol.y),1.25);
    }
}

