/// @description Lakitu logic

//If the player does exist
if (instance_exists(obj_playerparent))
    follow = obj_playerparent;

//Otherwise if the player does not exist, follow the camera
else if (instance_exists(obj_levelcontrol))
    follow = obj_levelcontrol;

else {

    follow = noone;
    hspeed = 0;
}

//If there's an object to follow.
if (follow != noone) {

    //If the object to follow is inside the spawn area.
    if (follow.x > xmin)
    && (follow.x < xmax) {
    
        //If the object to follow is at the right, move to the right.    
        if (follow.x > x) {
        
            hspeed += 0.0324;
            if (hspeed > 2)
                hspeed = 2;
        }
        
        //Otherwise, move to the left.
        else if (follow.x < x) {
        
            hspeed += -0.0324;
            if (hspeed < -2)
                hspeed = -2;
        }
        if (x < __view_get( e__VW.XView, 0 )-16)
            x = __view_get( e__VW.XView, 0 )-16;
        if (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16)
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16;
    }
    
    //Otherwise if it's outside, move outside the view.
    else {
    
        if (follow.x > (xmax-xmin)/2+xmin) {
            
            hspeed += 0.0324;
            if (hspeed > 2)
                hspeed = 2;
        }
        else if (follow.x < (xmax-xmin)/2+xmin) {
            
            hspeed += -0.0324;
            if (hspeed < -2)
                hspeed = -2;            
        }
    }
}

//Follow the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;
    
//Stay in sight
y = __view_get( e__VW.YView, 0 )+48+movement.y;
    
//Snap outside the level when outside the view
if (x < __view_get( e__VW.XView, 0 )-32)
    x = -32;
if (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32)
    x = room_width+32;

