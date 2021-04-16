/// @description Yellow parakoopa logic

//Inherit event
event_inherited();

//Jump if a kicked koopa shell is coming
if (gravity == 0) {
    
    //Check for a moving shell
    var shell = collision_rectangle(x+(16*sign(xscale)),bbox_top,x+(24*sign(xscale)),bbox_bottom-4,obj_shell_kick,0,0);
    
    //If there's a shell in position and said shell does not have a koopa inside.
    if (shell) 
    && (shell.hspeed != hspeed) {
    
        //Set the vertical speed
        if (swimming == 0)
            vspeed = -4;
        else
            vspeed = -2;
            
        //Boost jump
        y--;
    }
}

//Set the sprite
if (gravity == 0)
    sprite_index = spr_parakoopa_yellow;
else
    sprite_index = spr_parakoopa_yellow_jump;

