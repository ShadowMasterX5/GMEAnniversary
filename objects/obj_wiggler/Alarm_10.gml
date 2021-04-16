/// @description Start moving

if (!outside_view()) {

    //Check if moving
    moving = 1;
    
    //Set the body horizontal scale
    for (i=0; i<4; i++) {
    
        with (mybody[i]) {
        
            if (!instance_exists(obj_playerparent))
            || (obj_playerparent.x < x)
                xscale = -1;
            else
                xscale = 1;
        }
    }
        
    //Inherit event
    event_inherited();
    
    //Turn around
    event_user(15);
}
else
    alarm[10] = 1;

