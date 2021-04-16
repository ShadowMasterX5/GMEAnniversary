/// @description Throw projectiles when spinning

//If the player is doing a spinjump and it's not riding anything
if (stompstyle == 1) 
&& (global.mount == 0) {
    
    //Fireball
    if (global.powerup == cs_fire) {
    
        with (instance_create(x,y,obj_fireball)) 
            hspeed = 3*sign(other.dir);
    }         
    
    //Iceball
    else if ((global.powerup == cs_ice) || ((global.powerup == cs_penguin) && (swimming == false))) {
    
        with (instance_create(x,y,obj_iceball)) 
            hspeed = 1.2*sign(other.dir);
    }
        
    //Hammer
    else if (global.powerup == cs_hammer) {
    
        with (instance_create(x,y,obj_hammer)) 
            hspeed = 1.25*sign(other.dir);
    }
    
    //Superball
    else if (global.powerup == cs_super) {
    
        with (instance_create(x,y,obj_superball)) 
            hspeed = 3*sign(other.dir);
    }
    
    //Lightning
    else if (global.powerup == cs_lightning) {
    
        with (instance_create(x,y+2,obj_bolt)) 
            hspeed = 6*sign(other.dir);
    }
    
    //Change the facing direction
    dir = -dir;
    
    //Set alarm based on direction
    if (dir == 1)
        alarm[3] = 15;
    else
        alarm[3] = 30;
}

//Otherwise, deny event
else
    alarm[3] = 1;

