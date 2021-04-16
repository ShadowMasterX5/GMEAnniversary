/// @description Make the player interact with the signpost

//Check for the player
var player = collision_rectangle(bbox_left-16,bbox_top-16,bbox_right+16,bbox_bottom,obj_playerparent,0,0);

//If the sign is readable and the player is on the ground
if (ready)
&& (player)
&& (player.state < 2) 
&& (keyboard_check_pressed(global.upkey)) {

    //Play 'Message' sound
    audio_play_sound(snd_message, 0, false);
    
    //Display a message       
    with (instance_create(0,0,obj_dialog)) {
    
        varmsg = other.varmsg;
        mugshot = spr_mugshot_signpost;
    }
    
    //Make it unreadable to prevent spam
    ready = 0;
    
    //Delay readability of the signpost after a while
    alarm[0] = 24;    
}

