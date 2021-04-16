/// @description Leave a trail

//Check if the player exists
if (instance_exists(obj_playerparent)) {
    
    //Create a effect
    if (obj_playerparent.mask_index == spr_mask) {
    
        with (instance_create(x-8+random(16),y+random(16),obj_starspark))
            pal = random(8);
    }
    else if (obj_playerparent.mask_index == spr_bigmask) {
    
        with (instance_create(x-8+random(16),y-11+random(27),obj_starspark))
            pal = random(8);
    }
}

//Repeat
if (alarm[0] > 120)
    alarm[3] = 3;
else
    alarm[3] = 12;

