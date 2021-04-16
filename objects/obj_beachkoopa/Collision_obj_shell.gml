/// @description Climb inside the shell

//If the koopa is jumping inside
if (jumping == 1)
&& (gravity == 0) 
&& (ready == 2) {

    //If the shell is a green one, become a green koopa
    if (other.sprite_index == spr_shell)
    || (other.sprite_index == spr_shell_down) {
    
        //With the shell
        with (other) {
        
            instance_create(x,y,obj_koopa);
            instance_destroy();
        }
        
        //Destroy this object
        instance_destroy();
    }
    
    //Otherwise if the shell is a red one, become a red koopa
    else if (other.sprite_index == spr_shell_red)
    || (other.sprite_index == spr_shell_red_down) {
    
        //With the shell
        with (other) {
        
            instance_create(x,y,obj_koopa_red);
            instance_destroy();
        }
        
        //Destroy this object
        instance_destroy();    
    }
    
    //Otherwise if the shell is a red one, become a red koopa
    else if (other.sprite_index == spr_shell_blue)
    || (other.sprite_index == spr_shell_blue_down) {
    
        //With the shell
        with (other) {
        
            instance_create(x,y,obj_koopa_blue);
            instance_destroy();
        }
        
        //Destroy this object
        instance_destroy();    
    }
    
    //Otherwise if the shell is a red one, become a red koopa
    else if (other.sprite_index == spr_shell_yellow)
    || (other.sprite_index == spr_shell_yellow_down) {
    
        //With the shell
        with (other) {
        
            instance_create(x,y,obj_koopa_yellow);
            instance_destroy();
        }
        
        //Destroy this object
        instance_destroy();    
    }
}
else
    event_inherited();

