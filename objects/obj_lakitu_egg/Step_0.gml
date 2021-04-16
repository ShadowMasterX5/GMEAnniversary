/// @description Spiny logic

//Inherit event
event_inherited();

//If no gravity
if (gravity == 0) {

    //If the egg is a red one
    if (sprite_index == spr_spinyegg_red) {
    
        //Turn into a spiney
        instance_create(x,y,obj_spiny);
        instance_destroy();
        exit;
    }
    
    //Otherwise
    else {
    
        //If the object can bounce
        if (bounces > 0) {

            //Set the vertical spee
            vspeed = -1.5*bounces;
            
            //Boost
            y--;
            
            //Decrement bounces
            bounces--;
        }
        
        //Otherwise, stop
        else {
        
            //Slow down horizontal speed
            hspeed = 1*sign(hspeed);
            
            //Set vertical speed
            vspeed = 0;
        }
    }
}
else {

    gravity = 0.2;
    if (vspeed > 4) {
    
        vspeed = 4;
        bounces = 2;
    }
}

//Destroy if outside the view
if (x < __view_get( e__VW.XView, 0 )-32)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32)
|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+32)
    instance_destroy();

