/// @description Blow the player upwards

if (instance_exists(obj_playerparent)) {

    //If the player does have the frog or penguin powerup or the P-Switch is active.
    if (((global.powerup == cs_frog) || (global.powerup == cs_penguin)) || (obj_levelcontrol.switchon))
    exit;
    
    if (direct == 0) { //Up
    
        //Blow the player upwards
        if (collision_rectangle(x,bbox_top-80,x+31,bbox_top,obj_playerparent,0,0)) {
        
            if (obj_playerparent.yspeed > -4)
                obj_playerparent.yspeed -= 0.5;
        }
    }
    else if (direct == 1) { //Down
    
        //Blow the player downwards.
        if (collision_rectangle(x,bbox_bottom,x+31,bbox_bottom+80,obj_playerparent,0,0)) {
        
            if (obj_playerparent.yspeed < 4)
                obj_playerparent.yspeed += 0.5;
        }    
    }
    else if (direct == 2) { //Left
    
        //Blow the player to the left
        if (collision_rectangle(bbox_left-80,y,bbox_left,y+31,obj_playerparent,0,0)) {
        
            if (obj_playerparent.xspeed > -4)
                obj_playerparent.xspeed -= 0.5;
        }    
    }
    else if (direct == 3) { //Right
    
        //Blow the player to the right
        if (collision_rectangle(bbox_right,y,bbox_right+80,y+31,obj_playerparent,0,0)) {
        
            if (obj_playerparent.xspeed < 4)
                obj_playerparent.xspeed += 0.5;
        }    
    }
}

