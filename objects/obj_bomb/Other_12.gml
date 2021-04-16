/// @description Default throw / kick event.

//If 'Up' is pressed, throw it upwards.
if (keyboard_check(global.upkey)) {

    //Play 'Kick' sound.
    audio_play_sound(snd_kick, 0, false);
    
    //Create hit
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
    
    //If the item is not overlapping a solid.
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
        
        hspeed = obj_playerparent.xspeed/2;
        vspeed = -7;
    }
    else
        inwall = true;
}

//Otherwise, if 'Down' is pressed.
else if (keyboard_check(global.downkey)) {

    //Set the horizontal speed
    hspeed = 0.5*obj_playerparent.xscale;
}

//Otherwise, throw it to the side.
else {
        
    //Play 'Kick' sound.
    audio_play_sound(snd_kick, 0, false);
    
    //Create hit
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;

    //If the item is not overlapping a solid.
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
        
        //Set the vertical speed
        if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0)) {
        
            vspeed = -1;
            swimming = true;
        }
        else
            vspeed = -2;
            
        //Set the horizontal speed
        if (!collision_rectangle(x-1,bbox_top,x+1,bbox_bottom,obj_slopeparent,1,0))
            hspeed = obj_playerparent.xspeed+1.5*obj_playerparent.xscale;
        else {
        
            //Set the horizontal speed
            hspeed = 1*obj_playerparent.xscale;
            
            //Boost movement
            while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))   
                y--;
        }
    }
    else
        inwall = true;
}

