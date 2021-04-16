/// @description Change position

//If the player does exist
if (!instance_exists(obj_playerparent)) {

    alarm[2] = 1;
    exit;    
}

//Otherwise
else {

    //If the player is inside the given coordinates, and there's not a tile at the given position.
    if (obj_playerparent.x > xmin)
    && (obj_playerparent.x < xmax) {

        //Move to a random position
        x = (floor(random_range(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-16)/16)*16)+8;
        y = floor(random_range(__view_get( e__VW.YView, 0 )+16, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16)/16)*16;
        
        //Check for a semisolid
        var semisolid = collision_rectangle(x,bbox_bottom,x,bbox_bottom+2,obj_semisolid,0,1);
        
        //If there's a collision in position
        if (semisolid)
        && (ready == 3)
        && (!tile_layer_find(9, x-8, y)) 
        && (!tile_layer_find(9, x+7, y))
        && (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,1)) {
            
            //Snap above the semisolid
            y = semisolid.bbox_top-16;
            
            //Prepare spell
            ready = 0; 
        }
        
        //Otherwise, repeat
        else
            alarm[2] = 1;
    }
    else
        alarm[2] = 1;
}

