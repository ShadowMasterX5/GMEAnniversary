/// @description Default hurt script

//If not ready
if (ready == 0) {

    //Stop horizontal speed
    hspeed = 0;

    //If boom-boom has only one hp left
    if (hitpoints == 1) {
    
        //Set defeat sprite
        sprite_index = spr_boomboom_dead;
        
        //Get 4000 points
        with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(7);
        
        //Explode
        alarm[0] = 120;
    }
    
    //Otherwise, decrement hitpoints
    else {
    
        //Set hurt sprite
        sprite_index = spr_boomboom_sq;
        
        //Get 1000 / 2000 points
        if (hitpoints == 3) {
        
            hitpoints = 2;
            increment = 1.5;
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(5);
        }
        else {
        
            hitpoints = 1;
            increment = 2;
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(6);            
        }
        
        //Return to normal
        alarm[2] = 60;
    }
    
    //Prevent getting stomped
    ready = 1;
    
    //Animate
    image_speed = 0.25;
    
    //Reset alarms
    alarm[1] = -1;
    alarm[9] = -1;
    alarm[10] = -1;
    alarm[11] = -1;
        
    //Set vulnerability
    stomp = -1;
}

