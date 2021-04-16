/// @description Twister logic

//Inherit event from parent
event_inherited();

//Turn on ledges script
event_user(6);

//Push the player upwards
if (instance_exists(obj_playerparent)) {

    //If the player is above this twister
    if (collision_rectangle(x-16, bbox_bottom-112, x+16, bbox_bottom, obj_playerparent, 0, 0)) {
    
        //With the player
        with (obj_playerparent) {
        
            //Force set 'Jump' state
            state = 2;
            
            //Do not allow jump
            jumping = 2;
            
            //Set vertical speed
            yspeed -= 0.5;
            if (yspeed < -4.5)            
                yspeed = -4.5;     
        }
    }
}

