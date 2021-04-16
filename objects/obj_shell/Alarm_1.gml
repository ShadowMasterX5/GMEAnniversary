/// @description Wake up

//Stop shaking
shake = 0;
alarm[0] = -1;

//If there's a koopa inside the shell, make it go inside
if (koopainside != 0) {

    //Check what koopa is inside and create it
    switch (koopainside) {
    
        //Other shelled enemies
        case (-1): {
        
            //Big Green Koopa
            if (sprite_index == spr_shell_big)
            || (sprite_index == spr_shell_big_down) {
            
                instance_create(x,y,obj_koopa_big);
                instance_destroy();
            }
            
            //Big Red Koopa
            else if (sprite_index == spr_shell_big_red)
            || (sprite_index == spr_shell_big_red_down) {
            
                instance_create(x,y,obj_koopa_big_red);
                instance_destroy();
            }
            
            //Buzzy Beetle
            else if (sprite_index == spr_shell_buzzy)
            || (sprite_index == spr_shell_buzzy_down) {
            
                instance_create(x,y,obj_buzzybeetle);
                instance_destroy();
            }
            
            //Spiny
            else if (sprite_index == spr_shell_spiny) {
            
                instance_create(x,y,obj_spiny);
                instance_destroy();
            }                  
        } break;
    
        //Green
        case (1): instance_create(x,y,obj_beachkoopa); break;
        
        //Red
        case (2): instance_create(x,y,obj_beachkoopa_red); break;
        
        //Blue
        case (3): instance_create(x,y,obj_beachkoopa_blue); break;
        
        //Yellow
        case (4): instance_create(x,y,obj_beachkoopa_yellow); break;
    }
    
    //Do not create koopas
    koopainside = 0;
}

//Otherwise, wake up
else {

    //If the shell is a green one
    if (sprite_index == spr_shell)
    || (sprite_index == spr_shell_down) {
    
        instance_create(x,y,obj_koopa);
        instance_destroy();
        exit;
    }
    
    //Otherwise if the shell is a red one
    if (sprite_index == spr_shell_red)
    || (sprite_index == spr_shell_red_down) {
    
        instance_create(x,y,obj_koopa_red);
        instance_destroy();
        exit;
    }
    
    //Otherwise if the shell is a blue one
    if (sprite_index == spr_shell_blue)
    || (sprite_index == spr_shell_blue_down) {
    
        instance_create(x,y,obj_koopa_blue);
        instance_destroy();
        exit;
    }       
    
    //Otherwise if the shell is a red one
    if (sprite_index == spr_shell_yellow)
    || (sprite_index == spr_shell_yellow_down) {
    
        instance_create(x,y,obj_koopa_yellow);
        instance_destroy();
        exit;
    }                  
}

