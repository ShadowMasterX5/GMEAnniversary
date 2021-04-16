/// @description Note block bumping

//If the block can be bumped
if (!ready) {

    //If Mario bumps from above
    if (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_playerparent,0,0)) {

        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
        
        //This block is hit
        ready = 1;

        //Move down
        vspeed = 2;
        alarm[0] = 4;

        //Make Mario bounce
        with (obj_playerparent) {

            //Set the vertical speed
            yspeed = -4.725;
            
            //Boost jump
            y--;
            
            //Switch to jump state
            state = 2;
            
            //Check if the 'Jump' key is pressed.
            if (keyboard_check(global.shiftkey)) {
                
                //Play 'Noteblock' sound
                audio_play_sound(snd_noteblock_b, 0, false);
                
                //Create 'Warp' player
                with (instance_create(x,y,obj_player_warpnote)) {
                
                    //Hereby facing direction
                    image_xscale = other.xscale;
                    
                    //Hereby flashing sequence
                    isflashing = other.isflashing;
                }
                
                //Hereby destination room
                obj_player_warpnote.myroom = other.myroom;
                
                //Destroy
                instance_destroy();
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
    }
}

//Change palette
pal += 0.05;
if (pal > 8)
    pal = 0;

