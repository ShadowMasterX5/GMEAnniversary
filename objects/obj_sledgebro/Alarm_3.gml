/// @description Set the throwing frame

//If the sledge bro is not jumping.
if (gravity == 0) {

    //If the sledge bro is on the ground.
    if (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_semisolid,0,0)) 
    || (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_slopeparent,1,0)) {   
        
        //Throw a hammer
        alarm[4] = 30;
                
        //Replace sprite
        sprite_index = spr_sledgebro_b;
    }
    
    //Otherwise, deny event
    else    
        alarm[3] = 1;
}

//Otherwise, deny event
else
    alarm[3] = 1;

