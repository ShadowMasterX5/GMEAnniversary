/// @description Update background

//If there's no more text to display, allow exit
if (numb == array_length_1d(text)) {

    //If there's not more text in screen
    if (instance_number(obj_credits_text) == 0)
    && (ready == 0)
        ready = 1;

    //If 'The End' is still appearing
    else if (ready == 1) {
            
        alpha += 0.025;
        if (alpha > 1) {
        
            //Play 'Open path' sound
            audio_play_sound(snd_openpath, 0, false);
            
            //Set alpha
            alpha = 1;
            
            //Allow exit
            ready = 2;
            alarm[1] = 30;
        }
    }
    
    //Otherwise, allow exit
    else if (ready == 2) {
    
        //If any key is pressed
        if (keyboard_check_pressed(vk_anykey)) {
        
            //Stop 'Credits' theme
            audio_stop_sound(bgm_credits);
        
            //Create curtain out effect
            if (instance_number(obj_curtainout) == 0) {
            
                with (instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2,obj_curtainout)) 
                    target = rm_disclaimer;
            }            
        }
    }
}

//Update bars position
barx += 0.5;

//Update background speed
__background_set( e__BG.HSpeed, 0, 0.25 );
__background_set( e__BG.VSpeed, 0, 0.25 );

