/// @description Clear if the player is 16 pixels to the leftmost part of the tape

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is 16 pixels at the right of the tape
    if (obj_playerparent.x > x+16) {
    
        //Play 'Goal' sound
        audio_play_sound(snd_goal, 0, false);
        
        //Turn the player onto the goal object
        with (obj_playerparent) {
        
            with (instance_create(x,y,obj_player_goal_smw)) {
            
                vspeed = obj_playerparent.yspeed;
            }
            instance_destroy();
        }
        
        //Destroy the tape
        instance_destroy();
    }
}

