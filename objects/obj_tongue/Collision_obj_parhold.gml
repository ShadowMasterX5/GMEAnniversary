/// @description Eat held items

if (!hunger)
&& (other.object_index != obj_trampoline_timed)
&& (other.object_index != obj_trampoline_p_active) {

    //If the item is a shell, flip it.
    if (other.object_index == obj_shell) {
    
        //Green
        if (other.sprite_index = spr_shell)
            other.sprite_index = spr_shell_down;
            
        //Red
        else if (other.sprite_index = spr_shell_red)
            other.sprite_index = spr_shell_red_down;
            
        //Blue
        else if (other.sprite_index = spr_shell_blue)
            other.sprite_index = spr_shell_blue_down;
            
        //Yellow
        else if (other.sprite_index = spr_shell_yellow)
            other.sprite_index = spr_shell_yellow_down;
    }

    //Item eaten
    hunger = 1;

    //Move tongue back
    ready = 1;
    alarm[0] = 8;

    //If the item has any of the following sprites, do not remember.
    if (other.sprite_index != spr_shell_spiny)
    && (other.sprite_index != spr_shell_buzzy)
    && (other.sprite_index != spr_shell_buzzy_down) {
    
        //Put it in Yoshi's mouth
        obj_yoshi.mouthholder = other.object_index;

        //Remember its sprite
        obj_yoshi.mouthsprite = other.sprite_index;
    }

    //Food sprite
    foodsprite = other.sprite_index;

    //Food offset
    foodoffset = 0;

    //Destroy food
    with (other) instance_destroy()
}

