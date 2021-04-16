/// @description Phanto logic

//If not moving
if (ready == 0) {

    //If a key has been pulled
    if (instance_exists(obj_pullkey_up)) {
    
        //Animate
        image_speed = 1;
        
        //Get triggered
        ready = 1;
        
        //Begin chase
        alarm[1] = 60;
    }
}

//Otherwise, if moving
else if (ready == 2) {

    //If the key exists
    if (instance_exists(obj_pullkey_up)) {
    
        //If the key is being held
        if (obj_pullkey_up.held) {
    
            //If the player does exist
            if (instance_exists(obj_playerparent)) {
            
                //If the player is at the left
                if (obj_playerparent.x < x)
                    hspeed += -0.05;
                    
                //If the player is at the right
                if (obj_playerparent.x > x)
                    hspeed += 0.05;
                    
                //If the player is above
                if (obj_playerparent.y < y)
                    vspeed += -0.05;
                    
                //If the player is below
                if (obj_playerparent.y > y)
                    vspeed += 0.05;
            }
            
            //Otherwise, move away from the view
            else {
            
                if (x > __view_get( e__VW.XView, 0 )-128)
                    hspeed -= 0.05;
                if (x < __view_get( e__VW.XView, 0 )-128)
                    hspeed += 0.05;
                if (y > __view_get( e__VW.YView, 0 )-128)
                    vspeed -= 0.05;
                if (y < __view_get( e__VW.YView, 0 )-128)
                    vspeed += 0.05;            
            }
        }
        
        //Otherwise
        else {
        
            if (x > __view_get( e__VW.XView, 0 )-128)
                hspeed -= 0.05;
            if (x < __view_get( e__VW.XView, 0 )-128)
                hspeed += 0.05;
            if (y > __view_get( e__VW.YView, 0 )-128)
                vspeed -= 0.05;
            if (y < __view_get( e__VW.YView, 0 )-128)
                vspeed += 0.05;           
        }
    }
    
    //Otherwise, move away from the view
    else {
    
        if (x > __view_get( e__VW.XView, 0 )-128)
            hspeed -= 0.05;
        if (x < __view_get( e__VW.XView, 0 )-128)
            hspeed += 0.05;
        if (y > __view_get( e__VW.YView, 0 )-128)
            vspeed -= 0.05;
        if (y < __view_get( e__VW.YView, 0 )-128)
            vspeed += 0.05;     
    }
}

//Handle scale
event_user(8);

//Cap speed
if (speed > 2.5)
    speed = 2.5;

