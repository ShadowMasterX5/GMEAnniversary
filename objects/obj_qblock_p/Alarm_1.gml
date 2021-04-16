/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Make an item come out, if there is one
if (sprout != cs_coin) {

    //If this block contains a star and the player is invulnerable
    if (sprout == cs_coin_s) {
    
        if (instance_exists(obj_invincibility))
            sprout = cs_star;
        else
            sprout = cs_coin;
    }
    
    //If there is a powerup inside this block and the player is small, or there's a golden mushroom and health mode is not enabled.
    else if (sprout > cs_big) {
    
        if (global.healthmode == false)
        && (global.powerup == cs_small)
            sprout = cs_big;
    }
    else if (sprout == cs_golden)
    && (global.healthmode == false)
        sprout = cs_big;
        
    //Create the item
    if (sprout != cs_coin) {
    
        with (instance_create(x+8,y,obj_powerupsprout)) {
        
            sprite_index = constant_get_sprite(other.sprout);
            if (sprite_get_xoffset(sprite_index) == 0)
                x -= 8;
        }
    }       
}
    
//Change into a empty block
instance_change(obj_emptyblock, false);

