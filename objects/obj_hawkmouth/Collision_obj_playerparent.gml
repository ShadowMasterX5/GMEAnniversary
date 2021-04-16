/// @description Make the player enter the hawkmouth

//If the hawk's mouth is fully opened
if (ready == 3) {

    //If the following conditions are met, enter the hawk
    if ((xscale == 1) && (other.x > x))
    || ((xscale == -1) && (other.x < x)) 
    && ((other.state < 2) || (other.delay == 0)) {
    
        //Play 'Hawkmouth Close' sound
        audio_play_sound(snd_hawkmouth_close, 0, false);
        
        //Create hawk player object
        with (instance_create(x,y+28,obj_player_goal_smb2)) {
        
            //If the hawk is facing left
            if (other.xscale == 1) {
            
                motion_set(25, 0.5);
                image_xscale = 1;
            }
            
            //Otherwise, if the hawk is facing right
            else if (other.xscale == -1) {
            
                motion_set(155, 0.5);
                image_xscale = -1;
            }
            
            //Set this hawk as the hawk id
            myhawk = other.id;
        }
        
        //Close the mouth
        ready = 4;
        
        //Destroy the player
        with (obj_playerparent) instance_destroy();
    }
}

