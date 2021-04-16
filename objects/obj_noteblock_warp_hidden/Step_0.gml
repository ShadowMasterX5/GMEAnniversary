/// @description Make it visible

//Check for the player
var player = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+2,obj_playerparent,0,0);

//If the player is in position
if (player)
&& (player.yspeed < 0)
&& (player.x > bbox_left) 
&& (player.x < bbox_right)
&& (player.bbox_top > bbox_bottom+1+player.yspeed) {

    //Create a new block, give it the same item and bump it.
    with (instance_create(x,y,obj_noteblock_warp)) {
    
        //Destination room
        myroom = other.myroom;
    
        //Bump it
        ready = 1;
        
        //Set the vertical speed
        vspeed = -2;
        
        //Move down
        alarm[0] = 4;
    }
    
    //Destroy
    instance_destroy();
}

