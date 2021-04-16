/// @description Moving platform logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {
        
    //Make the platform sink a bit
    if (sink == 0) {
    
        sink = 1;
        vspeed = 1;
    }
        
    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-15);
}
else {

    if (sink == 2)
        sink = 0;
}

