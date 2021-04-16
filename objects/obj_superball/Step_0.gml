/// @description Superball logic

//Horizontal collision
if (hspeed > 0) && (collision_rectangle(bbox_right+hspeed,bbox_top,bbox_right+hspeed,bbox_bottom,obj_solid,0,0))
|| (hspeed < 0) && (collision_rectangle(bbox_left+hspeed,bbox_top,bbox_left+hspeed,bbox_bottom,obj_solid,0,0))
    hspeed = -hspeed;
    
//Floor collision
if (vspeed > 0) {

    //If collision with a semisolid platform
    if (collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_semisolid,0,0))
        vspeed = -vspeed;
        
    //Otherwise, if the ball collides with a slope
    else if (collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_slopeparent,1,0)) {
        
        //If moving right and there's a opposite slope collision in place
        if ((hspeed > 0)
        && ((collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_slope_r,1,0))
        || (collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_slope_sr,1,0))))
        
        //Otherwise, if moving left and there's a opposite slope collision in place
        || ((hspeed < 0)
        && ((collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_slope_l,1,0))
        || (collision_rectangle(bbox_left,bbox_bottom+vspeed,bbox_right,bbox_bottom+vspeed,obj_slope_sl,1,0)))) {
        
            //Bounce horizontally
            hspeed = -hspeed;
        }
        
        //Bounce vertically
        vspeed = -vspeed;        
    }
}

//Ceiling collision
if (vspeed < 0) {

    //If collision with a non-sloped ceiling
    if (collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_solid,0,0))
        vspeed = -vspeed;
        
    //Otherwise, if there's a sloped collision
    else if (collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_ceilslopeparent,1,0)) {
                
        //If moving right and there's a opposite slope collision in place
        if ((hspeed > 0)
        && ((collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_ceilslope_r,1,0))
        || (collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_ceilslope_sr,1,0))))
        
        //Otherwise, if moving left and there's a opposite slope collision in place
        || ((hspeed < 0)
        && ((collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_ceilslope_l,1,0))
        || (collision_rectangle(bbox_left,bbox_top+vspeed,bbox_right,bbox_top+vspeed,obj_ceilslope_sl,1,0)))) {
        
            //Bounce horizontally
            hspeed = -hspeed;   
        }
                
        //Bounce vertically
        vspeed = -vspeed;        
    }
}

//Destroy when outside the view
if (outside_view())
    instance_destroy();

