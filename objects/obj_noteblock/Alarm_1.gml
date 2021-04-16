/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;
ready = 0;

//Make an item come out, if there is one
if (sprout != cs_coin) {

    //If there is a powerup inside this block and the player is small, or there's a golden mushroom and health mode is not enabled.
    if ((sprout > cs_big) && (global.powerup == cs_small)) 
    || ((sprout == cs_golden) && (global.healthmode == false))
        sprout = cs_big;
        
    //Create the item
    with (instance_create(x+8,y,obj_powerupsprout)) {
         
        sprite_index = constant_get_sprite(other.sprout);
        if (other.sprout == cs_propellerblock)
            x -= 8;
    }
        
    //Do not sprout another item
    sprout = cs_coin;
}

