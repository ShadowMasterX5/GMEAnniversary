/// @description Stop it if it can't flip anymore

if (flips > 0)
    flips--;
else {

    //If the player is not in place
    if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_playerparent,0,1))
    exit;
    
    //Turn into a flip block
    instance_create(x,ystart,obj_flipblock);
    instance_destroy();
    exit;
}

