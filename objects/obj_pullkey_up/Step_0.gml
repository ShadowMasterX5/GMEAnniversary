/// @description Subcon key logic

//If the object is being held.
if (held) {

    //Depth
    depth = -6;

    //If the control key is being pressed and the vegetable can be thrown.
    if (keyboard_check_pressed(global.controlkey)) {
    
        //If the player does exist.
        if (instance_exists(obj_playerparent)) {
        
            //Play 'Throw' sound
            audio_play_sound(snd_throw, 0, false);
            
            //With the player
            with (obj_playerparent) {
            
                //Stop holding
                holding = 0;
                
                //Toss
                event_user(3);
            }
            
            //Check if 'Up' is pressed and throw the object upwards if so.
            if (keyboard_check(global.upkey)) {

                //Set the vertical speed
                vspeed = -6;
                gravity = 0.2;
                
                //Set the horizontal speed
                hspeed = obj_playerparent.xspeed/2;
            }
            
            //Otherwise, if it's not.
            else {
            
                //Set the vertical speed
                vspeed = 0.1;
                gravity = 0.2;
                
                //Set the horizontal speed
                if (obj_playerparent.xscale == 1)
                    hspeed = obj_playerparent.xspeed+2.5;
                else
                    hspeed = obj_playerparent.xspeed-2.5;
            }
            
            //Stop holding.
            held = false;
        }
    }
}
else {

    //Wall collision
    event_user(3);
    
    //Floor collision
    event_user(4);
    
    //Depth
    depth = -2;

    //Check for a water object
    var water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0);
    
    //If the object is not underwater and makes contact with water
    if (water) 
    && (!swimming) {
    
        //Make the object go underwater
        swimming = true;
        
        //Stop vertical movement
        gravity = 0;
        if (vspeed > 0)
            vspeed = 0;
    }
    
    //Otherwise, if the object is underwater and it's not underwater, end swimming.
    else if (!water) 
    && (swimming)
        swimming = false;
}

