/// @description Hoopster logic

//Check for the player
var player = collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top-1,obj_playerparent,0,0);
    
//If moving up
if (vspeed < 0) {
    
    //If there's a player above and this is overlapping a solid...
    if (player)
    && (collision_rectangle(player.bbox_left,player.bbox_top-1,player.bbox_right,player.bbox_top-1,obj_solid,0,0))
    
    //...or there's not a climbable surface in position
    || (!collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top,obj_climb,0,0))
        vspeed = 1;
}
else if (vspeed > 0) 
&& (!collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom+1,obj_climb,0,0))
    vspeed = -0.5;


