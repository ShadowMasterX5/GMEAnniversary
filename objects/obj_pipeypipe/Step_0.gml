/// @description Make pipey piranha show if held

//Update plant
anim += 0.15;

//Make sure the plant exists
if (myplant != noone) {

    //If the item is being held
    if (held) {
    
        //If the player does exist
        if (instance_exists(obj_playerparent)) {
        
            //If the player is turning
            if (obj_playerparent.turning) {
            
                sprite_index = spr_pipeypipe;
                dir = 1;
                myplant.x = -1000;
                myplant.y = -1000;
            }
            
            //Otherwise, stay on the sides
            else {
            
                //Set the sprite of the pipe
                sprite_index = spr_pipeypipe_held;
            
                //Set the facing direction
                myplant.image_xscale = dir;
            
                //Set the y position
                myplant.x = x;
                myplant.y = y;
            }
        }
        
        //Otherwise, hide it
        else {
        
            sprite_index = spr_pipeypipe;
            dir = 1;
            myplant.x = -1000;
            myplant.y = -1000;
        }
    }
    
    //Otherwise
    else {
        
        sprite_index = spr_pipeypipe;
        dir = 1;
        myplant.x = -1000;
        myplant.y = -1000;    
    }
}

//Inherit event from parent
event_inherited();

