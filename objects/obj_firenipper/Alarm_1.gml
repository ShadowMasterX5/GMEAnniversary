/// @description Spit fireballs

//If the nipper can spit more than 1 fireball
if (fires > 0) {
    
    //If the nipper can shoot a single fireball, set normal state
    if (fires == 1) {
    
        //Set default sprite
        sprite_index = spr_nipper;
        
        //Repeat this process
        alarm[0] = 240;
    }
    
    //Repeat
    alarm[1] = 6;
    
    //Decrement fires
    fires--;    

    //Increment prevfires
    prevfires++;
    
    //Create fireball
    with (instance_create(x,y+4,obj_plantfire2)) 
        hspeed = 1.5*other.xscale;
}

