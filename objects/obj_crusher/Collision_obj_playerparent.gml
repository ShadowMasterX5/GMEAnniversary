/// @description Make the player die if it gets embed inside the solid

with (other) {

    if (collision_rectangle(bbox_left+3,bbox_top+4,bbox_right-3,bbox_bottom-4,other.id,0,0)) 
    && (state < 2) {
    
        instance_create(x,y,obj_player_dead);
        instance_destroy();
        exit;
    }
}

