/// @description Change sprite

//If blowing fire
if (image_speed == 0.3)
&& (sprite_index == spr_dinoflame_st)
    sprite_index = spr_dinoflame;
    
//Otherwise, if ending blow
else if (image_speed == -0.3) {

    //Make the parent move
    if (!instance_exists(parent))
        alarm[1] = 1;
        
    else {
    
        //Make the dino torch move
        with (parent) alarm[10] = 30;
        
        //Destroy
        instance_destroy();
    }
}

