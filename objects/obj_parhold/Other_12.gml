/// @description Default throw / kick event.

//If 'Up' is pressed, throw it upwards.
if (keyboard_check(global.upkey)) {

    //Play 'Kick' sound.
    audio_play_sound(snd_kick, 0, false);
    
    //Create hit
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
    
    //If the item is not overlapping a solid.
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
        
        //Set the horizontal speed
        hspeed = obj_playerparent.xspeed/2;
        
        //Boost kick
        y -= 2;
        
        //If the item is not in a water surface
        if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0))
            vspeed = -7;
            
        //Otherwise
        else {

            vspeed = -3.5;
            swimming = true;
        }
    }
    else
        inwall = true;
}

//Otherwise, if 'Down' is pressed.
else if (keyboard_check(global.downkey)) {
    
    //Check if the object is stuck on a solid and move it
    if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
    
        //Move it to a safe position
        inwall = true;
        
        //Stop it
        hspeed = 0;
    }
    
    //If there's not a slope in place...
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))
        hspeed = 0.5*obj_playerparent.xscale;
    
    //Otherwise
    else
        vspeed = 0.1;    
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
        
        //If the object is not on contact with a slope
        if (!collision_rectangle(x,bbox_top,x,bbox_bottom-4,obj_slopeparent,1,0))
            hspeed = obj_playerparent.xspeed+1*obj_playerparent.xscale;
            
        //Otherwise, do not apply horizontal speed
        else        
            vspeed = 0.1;
    }
    else
        inwall = true;
}

