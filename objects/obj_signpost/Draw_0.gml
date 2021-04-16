/// @description Draw signpost and "!" mark

//If the player does exist
if (instance_exists(obj_playerparent)) {

    if (collision_rectangle(bbox_left-16,bbox_top-16,bbox_right+16,bbox_bottom,obj_playerparent,0,0))
        draw_sprite(spr_marker_npctalk, 0, x, bbox_top-16);
}

//Draw sign
draw_sprite_ext(sprite_index,-1,round(x),round(y),1,1,0,c_white,1);

