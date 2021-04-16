/// @description Make the player bounce in the opposite direction

//If the block has not been bumped and the player is not jumping
if (ready == 0)
&& (other.state < 2) {
    
    //This block is hit
    ready = 1;

    //Move down
    motion_set(315, 2);
    alarm[0] = 4;

    //Make Mario bounce
    with (obj_playerparent) {

        //Set the vertical speed
        xspeed = -3;
        yspeed = -4.125;
        
        //Boost jump
        y--;
        
        //Switch to jump state
        state = 2;
        
        //Make Mario look in the same direction
        xscale = -1;
        
        //Check if the 'Jump' key is pressed.
        if (keyboard_check(global.shiftkey)) {
        
            //Allow variable jump
            jumping = 1;
            
            //Play 'Trampoline' sound
            audio_play_sound(snd_noteblock_b, 0, false);
        }
        else {
        
            //Do not allow variable jumping
            jumping = 2;
            
            //Play 'Noteblock' sound
            audio_play_sound(snd_noteblock, 0, false);
        }  
    }
    
    //Create notes
    with (instance_create(bbox_left,ystart+16,obj_note)) motion_set(135,1);
    with (instance_create(bbox_right,ystart,obj_note)) motion_set(45,1);    
}


