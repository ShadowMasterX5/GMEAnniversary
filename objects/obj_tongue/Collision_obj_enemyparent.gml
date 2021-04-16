/// @description Eat enemies

if (hunger == 0) 
&& (ready == 0) 
&& (other.depth < 11) {

    //If the enemy is edible by yoshi
    if (other.edible == 2) {
    
        //Move tongue back
        ready = 1;
        alarm[0] = 8;
    }
    
    //Otherwise, create item
    else if (other.edible == 1)
        with (other) event_user(7);
        
    //Otherwise, eat it
    else {
    
        //Enemy eaten
        hunger = 1;
        
        //Move tongue back
        ready = 1;
        alarm[0] = 8;
        
        //If the item is a rotten shroom, kill instantly.
        if (other.object_index == obj_rotten) {
        
            //Put a rotten shroom inside yoshi's mouth
            obj_yoshi.mouthholder = obj_rotten;
        }
        
        //Otherwise, put shells inside yoshi's mouth
        else if (other.object_index == obj_shell_kick) {
        
            //If the yoshi is a red one, put fire inside
            if (global.mountcolour = 1)
                obj_yoshi.mouthholder = obj_yoshi_fire;
            
            //Otherwise,
            else {
            
                //Put a shell inside Yoshi's mouth
                obj_yoshi.mouthholder = obj_shell_kick;
                
                //Set the shell sprite
                obj_yoshi.mouthsprite = other.sprite_index;
            }
        } 
        
        //Otherwise, if the shell is a kamikaze shell
        else if (other.object_index == obj_koopa_kamikaze) {
        
            //Put fire inside yoshi's mouth
            obj_yoshi.mouthholder = obj_yoshi_fire;
        }
        
        //Otherwise, if the yoshi is a teal one
        else if (obj_yoshi.colour == 4) {
        
            //Put an ice block inside yoshi's mouth
            obj_yoshi.mouthholder = obj_iceblock;
            
            //Set the ice sprite
            obj_yoshi.mouthsprite = spr_iceblock;
        }
        
        //Otherwise, if the yoshi is a pink one
        else if (obj_yoshi.colour == 5) {
        
            //Put a vegetable inside yoshi's mouth
            obj_yoshi.mouthholder = obj_turnip;
            
            //Set the turnip sprite
            if (choose(0,1) == 0)
                obj_yoshi.mouthsprite = spr_turnip;
            else
                obj_yoshi.mouthsprite = spr_turnip_mini;
        }
        
        //Food sprite
        foodsprite = other.sprite_index;
        
        //Food image
        foodindex = other.image_index;
        
        //Food offset
        with (other) other.foodoffset = (bbox_left+bbox_right)/2-x;
        
        //Destroy food
        with (other) instance_destroy();
    }
}

