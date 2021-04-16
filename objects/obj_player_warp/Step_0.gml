/// @description Player pipe logic

//Update sprite to be used
if (cannon < 2) { //If the player is not in diagonal cannon mode

    //If the player is moving vertically
    if (vspeed != 0) {
    
        sprite_index = scr_mario_spin();
        image_speed = 0;
        image_index = 0;
    }
        
    //Otherwise, if the player is moving horizontally
    else {
    
        //Set the animation
        image_speed = 0.2;
    
        //If the player is holding something
        if (holding)
            sprite_index = scr_mario_hold();
            
        //Otherwise
        else
            sprite_index = scr_mario_walk();
    }
}

//Otherwise, if the player is on diagonal cannon mode
else {

    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //If the player is holding something
    if (holding)
        sprite_index = scr_mario_hold();
    else
        sprite_index = scr_mario_runjump();
}

//Update boundary and facing direction
event_user(1);

//If not in cannon mode
if (cannon == 0) {
    
    //Make the player move slower/faster.
    if (collision_point(x-8,y+boundary,obj_solid,0,0))
    && (collision_point(x+7,y+boundary,obj_solid,0,0))
    && (collision_point(x-8,bbox_bottom,obj_solid,0,0))
    && (collision_point(x+7,bbox_bottom,obj_solid,0,0)) {
    
        speed = 3;
        visible = false;
    }
    else {
    
        //Play a sound if the player is about to exit a pipe.
        if (speed == 3) {
            
            //Play 'Warp' sound
            audio_play_sound(snd_warp, 0, false);
        }
        
        //Make it visible
        visible = true;
    
        //Set the speed of the player
        if ((direction == 90) || (direction == 270))
            speed = 1;
        else
            speed = 0.5;
    }
    
    //Make the player exit the pipe.
    if (ready)
    && (!collision_rectangle(x-8,y+boundary,x+7,bbox_bottom,obj_solid,0,0))
        event_user(0);
}

//If he is in diagonal cannon mode, and moving down, turn into Mario
else if ((cannon == 2) && (vspeed > 0))
    event_user(0);

