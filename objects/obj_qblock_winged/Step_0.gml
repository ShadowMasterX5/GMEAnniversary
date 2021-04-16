/// @description Winged block logic

//Check for the player
var player = collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+2,obj_playerparent,0,0);

//If the player is in position
if (player)
&& (player.state = 2) 
&& (player.yspeed <= 0)
&& (player.bbox_top > bbox_bottom+player.yspeed-1) {

    //Create a new block, give it the same item and bump it.
    with (instance_create(x,y,obj_qblock)) {
    
        //Set the sprite
        sprite_index = spr_qblock_winged;
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

//Handle block movement
event_user(0);

//Push the player when below the block
if (other.y > y-11) {

    if ((hspeed < 0) && (collision_rectangle(bbox_left-2-hspeed,bbox_top,bbox_left,bbox_bottom-1,obj_playerparent,0,0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right,bbox_top,bbox_right+2+hspeed,bbox_bottom-1,obj_playerparent,0,0)))
        obj_playerparent.x += hspeed;
}

