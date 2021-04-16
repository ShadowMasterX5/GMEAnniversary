/// @description Animate

//If the player does exist, follow him
if (instance_exists(obj_playerparent)) {

    //If the player is above the plant
    if (obj_playerparent.y < y-8) {
    
        //If there's a fireball overlapping
        if (place_meeting(x,y,obj_plantfire))
            image_index = 3;
        else
            image_index = 2;
    }
    
    //Otherwise, if the player is below the plant
    else if (obj_playerparent.y > y-8) {
    
        //If there's a fireball overlapping
        if (place_meeting(x,y,obj_plantfire))
            image_index = 1;
        else
            image_index = 0;
    }
}

//Change to ice
if (ice) then sprite_index = spr_pplant_large_ice;

//Set the facing direction
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

