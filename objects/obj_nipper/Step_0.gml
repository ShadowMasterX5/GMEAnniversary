/// @description Nipper logic

//Inherit event
event_inherited();

//If there's no gravity
if (gravity == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is nearby, jump
        if (obj_playerparent.x > x-32)
        && (obj_playerparent.x < x+32) 
        && (obj_playerparent.y < y)
            vspeed = -3;
    }
    
    //Set default sprite
    sprite_index = spr_nipper;
    
    //Set animation speed
    image_speed = 0.125;
}

//Otherwise, set jump frame
else {

    //Set jumping sprite
    sprite_index = spr_nipper_jump;
    
    //Set animation speed
    image_speed = 0.25;
}

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

