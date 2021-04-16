/// @description Make an item sprout downwards

//If there is a powerup inside this block and the player is small, or there's a golden mushroom and health mode is not enabled.
if ((sprout > cs_big) && (global.powerup == cs_small)) 
|| ((sprout == cs_golden) && (global.healthmode == false))
    sprout = cs_big;
        
//Make an item sprout
if (sprout != cs_coin) {
    
    //If there's a leaf inside this block
    if (sprout == cs_leaf) {
    
        with (instance_create(x+8,ystart+16,obj_pickup_leaf))
            alarm[1] = 1;
    }
    else {
        
        //Check the sprite...
        var sprite = constant_get_sprite(sprout);
        
        //...and get a powerup
        with (sprite_make_object(x+8,ystart+16,sprite)) {
        
            hspeed = 0;
            permission = 1;
            if (sprite_index == spr_propellerblock)
                x -= 8;
        }        
    }
        
    //Do not create another item
    sprout = cs_coin;
}

