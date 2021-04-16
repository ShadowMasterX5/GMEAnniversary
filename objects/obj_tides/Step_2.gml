/// @description Water logic

//Update xx
if (poison == false) then xx -= 0.5;

//If the water is changing it's position.
if (vspeed != 0) {

    //If the water collides with a 'End' modifier.
    if (collision_rectangle(bbox_left,y,bbox_right,y+15,obj_endmarker,0,1)) {
    
        //Stop moving
        vspeed = 0;
        
        //Snap in grid
        move_snap(16,16);
        
        //Repeat again
        alarm[0] = 360;
    }
}

//Update water position.
water.x = x;
water.y = y+4;

//Check for Mario
var player = collision_rectangle(water.bbox_left,water.bbox_top,water.bbox_right,water.bbox_bottom,obj_playerparent,0,1);

//If this water is poisonous and Mario overlaps this object
if (poison) {

    if (player)
    && (player.swimming) {
    
        with (player) {
        
            instance_create(x, y, obj_player_dead);
            instance_destroy();
        }
    }
}

//If Mario is overlapping this object and it's swimming.
if (push) {

    if (!instance_exists(obj_puller))
    && (player) 
    && (player.swimming)
    && (global.powerup != cs_frog)
    && (global.powerup != cs_penguin)
    && (!collision_rectangle(player.bbox_left-1,player.bbox_top+4,player.bbox_left,player.bbox_bottom-1,obj_solid,1,1))
        player.x -= 0.3;
}

