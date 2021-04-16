/// @description Handle camera position

//If the camera is locked.
if (camlock) {

    //Set the x position of the camera.
    x = obj_playerparent.x;
    
    //If the player speed is the maximum possible...
    if (((obj_playerparent.run)
    
    //...and the player has one of the following powerups...
    && ((global.powerup == cs_leaf)
    || (global.powerup == cs_tanooki)))
    
    //...or the player is riding something that is flying
    || (((instance_exists(obj_yoshi)) && (obj_yoshi.flying == 1))
    || (instance_exists(obj_kuriboshoe)) && (obj_kuriboshoe.flying == 1))) {
    
        //Set the y position of the camera
        y = obj_playerparent.y;
        
        //Set the vertical speed of the view
        __view_set( e__VW.VSpeed, 0, 4 );
    }
    
    //Otherwise, if the player is climbing up a beanstalk or a fence.
    else if (obj_playerparent.state == 3) {
    
        //Set the y position of the camera
        y = obj_playerparent.y;
        
        //Set the vertical speed of the view
        __view_set( e__VW.VSpeed, 0, 4 );                   
    }
    
    //Otherwise, if the player is not doing anything stated above and the view is above the view start position.
    else {
    
        //If the player is colliding with a moving platform
        if (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom+1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+2,obj_platformparent,0,0)) 
        && (obj_playerparent.state < 2) {
        
            //Set the y position of the camera
            y = obj_playerparent.y;
            
            //Set the vertical speed of the view
            __view_set( e__VW.VSpeed, 0, 4 );
        }
        
        //Otherwise
        else if (__view_get( e__VW.YView, 0 ) < room_height-216) {
    
            //Set the y position of the camera
            y = obj_playerparent.y;
            
            //Set the vertical speed of the view
            __view_set( e__VW.VSpeed, 0, -1 );           
        }
    }        
}

//Otherwise, if the camera is not locked.
else {

    //Set the x position of the camera.
    x = obj_playerparent.x;

    //Set the y position of the camera.
    y = obj_playerparent.y;                
}

