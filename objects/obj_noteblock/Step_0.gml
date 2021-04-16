/// @description Note block bumping

//If the block can be bumped
if (!ready) {

    //If Mario bumps from above
    if (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_playerparent,0,0)) {
        
        //This block is hit
        ready = 1;

        //Move down
        vspeed = 2;
        alarm[0] = 4;

        //Make Mario bounce
        with (obj_playerparent) {

            //Set the vertical speed
            yspeed = -4.125;
            
            //Boost jump
            y--;
            
            //Switch to jump state
            state = 2;
            
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
        with (instance_create(bbox_left,bbox_top,obj_note)) motion_set(135,1);
        with (instance_create(bbox_right,bbox_top,obj_note)) motion_set(45,1);
        
        //Make an item appear downwards
        event_user(1);
    }
}

