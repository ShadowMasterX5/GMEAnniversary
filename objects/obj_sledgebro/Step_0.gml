/// @description Sledge Bro. logic

//Floor collision
event_user(4);

//If there's gravity
if (gravity > 0) {

    if (jumping == 1)
    && (vspeed > 0)
        jumping = 2;
}
else if (gravity == 0) {

    //If the sledge bro lands
    if (jumping == 2) {
    
        //Play 'Thwomp' sound
        audio_play_sound(snd_thwomp, 0, false);
        
        //Stun the player if possible
        if (instance_exists(obj_playerparent)) {
        
            if (obj_playerparent.state < 2) {
                    
                with (obj_playerparent) {
                
                    //Stun for two seconds
                    stuntime = 120;
                    
                    //Make it shake
                    shake = 1;
                    
                    //Stop horizontal speed
                    hspeed = 0;
                    
                    //Disable his controls
                    disablecontrol = true;
                }
            }
        }
    
        //Jump again
        jumping = 0;
    
        //Set horizontal speed.
        hspeed = prevhsp;
        alarm[0] = prevalm;
        
        //Create smoke effects    
        instance_create(bbox_left-8,bbox_bottom-8,obj_smoke);
        instance_create(bbox_right-8,bbox_bottom-8,obj_smoke);            
    }
}

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

