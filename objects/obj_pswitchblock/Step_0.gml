/// @description Make the player interact with this item

//If there's a player above
var player = collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top-1,obj_playerparent,0,0);
if (player)
&& (player.state != 2) {

    //If the switch has not been pressed yet
    if (image_index == 0) {

        //Play 'Switch' song
        audio_play_sound(snd_switch, 0, false);
        
        //Destroy solid mask
        with (mysolid) instance_destroy();
        
        //Change it
        image_index = 1;
        
        //Destroy it
        alarm[0] = 60;
        
        //Activate switch events
        with (obj_levelcontrol) {
        
            //Reset warning
            pwarning = 0;
            
            //Restart timer
            alarm[5] = 800;
            
            //Activate p-switch effect
            event_user(5);
        }
    }
}

