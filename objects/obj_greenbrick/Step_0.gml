/// @description Break the brick when landing on it.

//If Mario bumps from above
if (collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_playerparent,0,0)) {

    //Make Mario bounce
    with (obj_playerparent) {

        //Set the vertical speed
        yspeed = -4.125;
        
        //Boost jump
        y--;
        
        //Switch to jump state
        state = 2;
        
        //Check if the 'Jump' key is pressed and allow variable jumping
        if (keyboard_check(global.shiftkey))
            jumping = 1;
        else
            jumping = 2;      
    }
    
    //Break the brick
    event_user(1);
}

