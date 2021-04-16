/// @description Switch Palace logic

//If the switch has not been pressed yet
if (ready == 0) {

    //Check for the player object
    var player = collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,1);
    
    //If the player does exist
    if (player)
    && (player.state < 2) {
    
        //Play 'Thwomp' sound
        audio_play_sound(snd_thwomp, 0, false);
        
        //Destroy solid mask
        with (mysolid) instance_destroy();
        
        //Perform level control event
        with (obj_levelcontrol) {
        
            event_user(0);
            alarm[2] = 0;
        }
        
        //Perform player events
        with (player) {
        
            //If the dropdown attack is there, destroy
            if (instance_exists(obj_dropdown)) {
            
                with (obj_dropdown) instance_destroy();
            }
        
            //Disable controls
            disablecontrol = true;
            
            //Set the vertical speed
            yspeed = -3;
        }
        
        //Do not animate
        image_speed = 0;
        image_index = 1;
        
        //Perform switch events
        event_user(0);
    }
}

//Otherwise, if the switch is pressed and no fanfare is playing
else if (ready) 
&& (audio_is_playing(bgm_smwclear))
    alarm[0] = 120;

