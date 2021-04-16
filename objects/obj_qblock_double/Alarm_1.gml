/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Create multiple items
for (var i=0; i<2; i++;) {

    //If this block contains a star and the player is invulnerable
    if (sprout[i] == cs_coin_s) {
    
        if (instance_exists(obj_invincibility))
            sprout[i] = cs_star;
        else
            sprout[i] = cs_coin;
    }
    
    //If there is a powerup inside this block and the player is small, or there's a golden mushroom and health mode is not enabled.
    else if (sprout[i] > cs_big) {
    
        if (global.healthmode == false)
        && (global.powerup == cs_small)
            sprout[i] = cs_big;
    }
    else if (sprout[i] == cs_golden)
    && (global.healthmode == false)
        sprout[i] = cs_big;
        
    //Create the item
    if (sprout[i] != cs_coin) {
    
        with (instance_create(x+8+(i*16),y,obj_powerupsprout)) {
        
            sprite_index = constant_get_sprite(other.sprout[i]);
            if (sprite_get_xoffset(sprite_index) == 0)
                x -= 8;
        }
    }    
}
    
//Change into a empty block
with (instance_create(x,y,obj_emptyblock)) sprite_index = spr_qblock_double_empty;

//Destroy
instance_destroy();

