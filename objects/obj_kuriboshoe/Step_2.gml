/// @description Shoe logic

//If the player exists
if (instance_exists(obj_playerparent)) {

    //Snap to position
    x = obj_playerparent.x;
    y = obj_playerparent.y;
    
    //Force the player to be invisible, hold and spin jump
    with (obj_playerparent) {
    
        visible = 0;
        holding = 4;
        stompstyle = 1;
    }
    
    //If the player is standing
    if (obj_playerparent.state == 0)
        image_index = 0;
        
    //Otherwise, if the player is walking or the jugemu shoe is flying, animate.
    else if ((obj_playerparent.state == 1) || ((global.mountcolour = 3) && (flying == 1))) {
    
        if (flying)
            image_speed = 0.25;
        else
            image_speed = 0.15;
    }
        
    //Otherwise, use second image
    else
    image_index = 1;

    //If the player is on a Dossun shoe
    if (global.mountcolour == 2) {
    
        //If the player lands after a jump, stomp
        if (stateprev == 2) 
        && (obj_playerparent.state != 2)
        && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_quicksand, 0, 0))
            instance_create(x,y,obj_stomp);
        
        //Remember last state
        stateprev = obj_playerparent.state;
    }
    
    //If the player is on a Jugemu shoe
    if (global.mountcolour == 3) {
    
        //If 'Shift' is being held outside water
        if ((keyboard_check(global.shiftkey)) && (obj_playerparent.swimming == false)) {
        
            //If not flying and moving down, start flying.
            if (!flying)
            && (obj_playerparent.yspeed > 0) {
            
                flying = 1;
                alarm[0] = 1;
            }
            
            //When flying
            if (flying) {
            
                //With the player
                with (obj_playerparent) {
                
                    //If there's not a ceiling above the player, move up
                    if (!collision_rectangle(bbox_left,bbox_top-3,bbox_right,bbox_top,obj_solid,0,0))
                    && (!collision_rectangle(bbox_left,bbox_top-3,bbox_right,bbox_top,obj_ceilslopeparent,1,0)) {
                    
                        yspeed += -0.5;
                        if (yspeed < -1.5)
                            yspeed = -1.5;
                    }
                }
            }        
        }
        
        //Otherwise, stop flying
        else
            flying = false;
    }
    
    //Set depth
    depth = -5;
}

//Otherwise, if the player does not exist.
else {

    //Find a suitable player
    event_user(15);
    
    //If said player object exists, follow him
    if (instance_exists(follow)) {
    
        //Snap onto this object
        x = follow.x;
        y = follow.y;
        
        //Set the same depth as the other object
        depth = follow.depth;
    }
}

//If the player just died, destroy
if (instance_exists(obj_player_dead))
    instance_destroy();

