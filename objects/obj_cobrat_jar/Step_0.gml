/// @description Vase Cobrat logic

//If jumping and moving down
if ((jumping == 1) && (vspeed > 0)) {

    //Set the sprite
    sprite_index = spr_cobrat_jump;
    
    //Reset sprite
    alarm[2] = 32;
    
    //End jump
    jumping = 2;
    
    //Create ball
    with (instance_create(x+4*sign(xscale), y-4, obj_snifit_ball))
        hspeed = 1.5*sign(other.xscale);
}

//Otherwise, if moving down and nearby the start position
else if ((jumping == 2) && (y > ystart)) {

    //Set the vertical speed
    gravity = 0;
    vspeed = 0;    
    
    //Stay on start position
    y = ystart;
    
    //Set offset variable
    ready = -1;
    
    //End jump
    jumping = 0;
    
    //Jump again
    alarm[1] = 100;
}
        
//Update offset
event_user(8);

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

