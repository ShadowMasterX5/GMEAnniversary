/// @description Blooper logic

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the blooper can swim upwards and the player is above
    if (!ready) 
    && (y > obj_playerparent.y) {
    
        //Swim upwards.
        ready = 1;
        
        //Set gravity
        gravity = 0;
        
        //Sink slowly
        alarm[0] = 40;
        
        //Find Mario
        if (obj_mario.x > x)             
            motion_set(45,1.5);
        else            
            motion_set(135,1.5);
    }
}

//Default wall collisions.
event_user(3);

//Default floor / ceiling collisions.
event_user(4);

//Cap vertical speed
if (vspeed > 0.5)
    vspeed = 0.5;

