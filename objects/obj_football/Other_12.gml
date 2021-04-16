/// @description Default throw / kick event.

//If 'Up' is pressed, throw it upwards.
if (keyboard_check(global.upkey)) {

    //Play 'Kick' sound.
    audio_play_sound(snd_kick, 0, false);
    
    //Create hit
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
            
    //Set the horizontal speed
    hspeed = obj_playerparent.xspeed/2;
    
    //Boost kick
    y -= 2;
    
    //Animate
    image_speed = 0.15;
    
    //If the item is not in a water surface
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0))
        vspeed = -7;
        
    //Otherwise
    else {

        vspeed = -3.5;
        swimming = true;
    }
}

//Otherwise, throw it to the side.
else {
        
    //Play 'Kick' sound.
    audio_play_sound(snd_kick, 0, false);
    
    //Create hit
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
        
    //Animate
    image_speed = 0.15;    
    
    //Set the vertical speed
    if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0)) {
    
        vspeed = -1.3;
        swimming = true;
    }
    else {
    
        vspeed = -2.7;
    }
        
    //Set the horizontal speed
    hspeed = 2.7*sign(obj_playerparent.xscale);
}

