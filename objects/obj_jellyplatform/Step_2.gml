/// @description Jelly Mushroom Platform logic

//If the player is on this platform
if (collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2) {

    //Set up scale
    xscale = 1.25;
    yscale = 0.75;

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
            audio_play_sound(snd_trampoline, 0, false);
        }
        else {
        
            //Do not allow variable jumping
            jumping = 2;
            
            //Play 'Bump' sound
            audio_play_sound(snd_bump, 0, false);
        } 
    }
}

//Manage scale
xscale = approach(xscale, 1, 0.025);
yscale = approach(xscale, 1, 0.025);

