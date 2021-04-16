/// @description Shoot a bullet out of the cannon

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//If the gray p-switch is active
if (obj_levelcontrol.gswitchon == true) {

    alarm[0] = 1;
    exit;
}

//If the player is nearby the cannon
if (obj_playerparent.x > bbox_left-32)
&& (obj_playerparent.x < bbox_right+32) {

    alarm[0] = 1;
    exit;
}

//Otherwise
else {

    //Play 'Lightning' sound
    audio_play_sound(snd_lightning, 0, false);
    
    //Shoot again
    alarm[0] = 240;
    
    //Create a bullet
    with (instance_create(x+32,y+32,obj_bullet_banzai)) {
    
        //If the player is at the left
        if (obj_playerparent.x < x) {
        
            //Create smoke
            repeat (32) {

                with (instance_create(other.x,other.y+24,obj_smoke)) {
                
                    depth = 10;
                    hspeed = random_range(-0.5,-2);
                    vspeed = random_range(1.5,-1.5);
                }                     
            }
        
            //Set horizontal speed and facing direction
            hspeed = -1.5;
            xscale = -1;
        }
        else {
        
            //Create smoke
            repeat (32) {

                with (instance_create(other.x+48,other.y+24,obj_smoke)) {
                
                    depth = 10;
                    hspeed = random_range(0.5,2);
                    vspeed = random_range(1.5,-1.5);
                }                     
            }
        
            //Set horizontal speed and facing direction
            hspeed = 1.5;
            xscale = 1;
        }
    }
}

