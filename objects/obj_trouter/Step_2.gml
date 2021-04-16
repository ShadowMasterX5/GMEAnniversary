/// @description Pull / Moving platform logic

//If the collision exists
if (instance_exists(mytop)) {

    //Snap semisolid to position
    mytop.x = x;
    mytop.y = bbox_top;
    
    //If the player is on this enemy
    if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
    && (obj_playerparent.bbox_bottom < yprevious+5)
    && (obj_playerparent.state < 2)) {
        
        //If the pull object does not exist and this object can be pulled
        if (instance_number(obj_puller) == 0) 
        && (canpull()) {
        
            //Force player hold
            with (obj_playerparent) {
            
                holding = 1;
                visible = 0;
            }
            
            //Create puller
            instance_create(obj_playerparent.x,obj_playerparent.y,obj_puller);
            
            //Finish pull
            alarm[0] = 10;
        }
        
        //Check for a moving platform
        var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_enemytop,0,0);
        if (check)
        && (check != mytop)
            exit;
                
        //Snap the player vertically
        obj_playerparent.y = ceil(bbox_top-15);

        //Move the player horizontally if there is no solid in his way
        if (hspeed < 0) && (!collision_rectangle(obj_playerparent.bbox_left+hspeed,obj_playerparent.bbox_top+4,obj_playerparent.bbox_left+hspeed,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
        || (hspeed > 0) && (!collision_rectangle(obj_playerparent.bbox_right+hspeed,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right+hspeed,obj_playerparent.bbox_bottom-1,obj_solid,0,0))
            obj_playerparent.x += hspeed;       
    }
}

