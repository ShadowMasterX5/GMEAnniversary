/// @description Handle particle effects

//If Mario is turning, sliding and it's on contact with the ground.
if (sprite_index == scr_mario_skid()) || ((sliding) && (state < 2)) {

    //If Mario is not crouched down and not wall climbing
    if (!crouch) 
    && (wallkick != 1) {
    
        //If Mario has the penguin powerup and it is sliding on water.
        if (global.powerup == cs_penguin) {
        
            //Check for water
            var water = collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_swim, 0, 0);
        
            //If there's water
            if (water) {
            
                //Create splash effect
                with (instance_create(x,water.y-15,obj_smoke))        
                    sprite_index = spr_splash;                            
            }
            
            //OTherwise
            else {
            
                //Create normal smoke effect
                with (instance_create(x,bbox_bottom-4,obj_smoke))        
                    sprite_index = spr_smoke_c;                
            }            
        }
        
        else {
        
            //Create normal smoke effect
            with (instance_create(x,bbox_bottom-4,obj_smoke))        
                sprite_index = spr_smoke_c;
        }
        
        //Repeat
        alarm[10] = 2;
    }
    
    //Otherwise, hold it
    else
        alarm[10] = 1;
}

//Otherwise, if Mario is walljumping
else if ((wallkick == 1) && (yspeed > 0)) {

    //If Mario is small
    if (global.powerup == cs_small) {
        
        with (instance_create(x+5*sign(xscale), y, obj_smoke))
            sprite_index = spr_smoke_c;
    }
    
    //Otherwise, if Mario is not small
    else {
    
        with (instance_create(x+5*sign(xscale), y-8, obj_smoke))
            sprite_index = spr_smoke_c;        
    }
    
    //Repeat the process
    alarm[10] = 4;
}

//Otherwise, hold it
else
    alarm[10] = 1;

