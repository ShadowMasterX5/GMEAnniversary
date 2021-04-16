/// @description Throw a egg

//Before throwing an egg, check if the player exists
if (instance_exists(obj_playerparent)) {

    //If there's 6 or less green lakitu eggs in place and the player is in the given coordinates.
    if (instance_number(obj_spiny) < 6) {
    
        //Play 'Hammer' sound
        audio_play_sound(snd_hammer, 0, false);
    
        //Create a egg
        with (instance_create(x,y-16,obj_lakitu_egg)) {
        
            //Set the sprite
            sprite_index = spr_spinyegg_red;
        
            //Set the vertical speed
            vspeed = -4;
            
            //Set the horizontal speed
            if (obj_playerparent.x < x)
                hspeed = -1;
            else
                hspeed = 1;
        }
        
        //Set throwing frame
        image_speed = 0;
        image_index = 1;

        //Set default frame
        alarm[3] = 30;
    }
    
    //Otherwise, go inside
    else    
        alarm[3] = 120;
}

//Otherwise, go inside
else
    alarm[3] = 120;

