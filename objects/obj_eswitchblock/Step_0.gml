/// @description Make the player interact with this item

//If there's a player above
var player = collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top-1,obj_playerparent,0,0);
if (player)
&& (player.state != 2)
&& (player.bbox_bottom < bbox_top+5) {

    //If the switch has not been pressed yet
    if (image_index == 0) {

        //Play 'Switch' song
        audio_play_sound(snd_switch, 0, false);
        
        //Destroy solid mask
        with (mysolid) instance_destroy();
        mysolid = noone;
        
        //Change it
        image_speed = 0;
        image_index = 1;
        
        //Destroy
        alarm[0] = 60;
        
        //Turn on E-Switch events in level manager
        with (obj_levelcontrol) event_user(8);
    }
}

