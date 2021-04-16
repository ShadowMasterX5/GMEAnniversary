/// @description Activate boss door when the player passes through

//If not visible
if (visible == false) {

    //If the player exists and passed through
    if (instance_exists(obj_playerparent)) 
    && (obj_playerparent.x > x+26) {
    
        //Make visible
        visible = 1;
        
        //Create a solid barrier
        with (instance_create(x, y, obj_solid)) image_yscale = 4;
        
        //Scroll the screen to the right
        with (instance_create(obj_levelcontrol.x, obj_levelcontrol.y, obj_autoscroll)) {
        
            //Mode
            mode = 1;
            
            //Set horizontal speed
            speed = 3;
        }
        
        //Play 'Castle Break' sound
        audio_play_sound(snd_castlebreak, 0, false);
        
        //Create smoke
        instance_create(x, y, obj_smoke);
        
        //Next frame
        alarm[0] = 20;
        
        //Prevent the view from going too far to the right
        alarm[3] = 1;
    }
}

