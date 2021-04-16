/// @description Turn into a real item when no solid is overlapping

//If not overlapping with a solid
if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)) {

    //Create an item
    with (sprite_make_object(x, y, sprite_index)) {
    
        //If moving up
        if (other.vspeed < 0) {
        
            alarm[10] = 1;
            if (other.bouncy == 1)
                vspeed = -2.5;
        }
            
        //Otherwise, stop it
        else {
        
            permission = 1;
            y--;
        }
        
        //If the item is underwater, make it swim
        if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
            swimming = true;
    }
    
    //Destroy
    instance_destroy();
}

