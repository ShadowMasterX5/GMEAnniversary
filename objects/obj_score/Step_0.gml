/// @description Score logic

//Destroy if vertical speed is equal to zero
if (vspeed == 0) {

    //If the sprite are not the extra lives ones, destroy at the moment.
    if (sprite_index != spr_1uppts)
    && (sprite_index != spr_2uppts)
    && (sprite_index != spr_3uppts)
        instance_destroy();
        
    //Otherwise, fade to yellow
    else {
    
        fade += 0.05;
        if (fade > 1)
            instance_destroy();
    }
}

//Increment scale
scale += 0.05;
if (scale > 1)
    scale = 1;

//Make sure if it's inside the view
if (y < __view_get( e__VW.YView, 0 )+32)
    y = __view_get( e__VW.YView, 0 )+32;

