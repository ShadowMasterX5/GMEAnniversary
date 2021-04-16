/// @description Bump this block 

//Check for the player
var player = collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+2,obj_playerparent,0,0);

//If the player is in position
if (player)
&& (player.state = 2)
&& (player.yspeed <= 0)
&& (angle == 0) {

    //Create a new block, give it the same item and bump it.
    with (instance_create(x,y,obj_qblock)) {
    
        //Set the sprite
        sprite_index = spr_qblock_spiked_nospin;
        image_speed = 0;
        image_index = 0;
    
        //Bump it
        ready = 1;
        
        //Set the vertical speed
        vspeed = -2;
        
        //Move down
        alarm[0] = 4;
        
        //Hereby the item
        sprout = other.sprout;
        
        //Hereby block specific events
        event_user(0);
    }
    
    //Destroy
    instance_destroy();
}

if ((angle == 0) && ((collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top-1,obj_playerparent,0,0)) && (global.mount == 0)))
|| ((angle > 30 && angle < 150) && (collision_rectangle(bbox_right+1,bbox_top,bbox_right+1,bbox_bottom,obj_playerparent,0,0)))
|| ((angle == 180) && (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_playerparent,0,0)))
|| ((angle > 210 && angle < 330) && (collision_rectangle(bbox_left-1,bbox_top,bbox_left-1,bbox_bottom,obj_playerparent,0,0)))
    with (obj_playerparent) event_user(0);

