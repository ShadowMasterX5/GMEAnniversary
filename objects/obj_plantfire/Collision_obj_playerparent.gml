/// @description Hurt or freeze the player

//If the sprite is a fireball
if (sprite_index == spr_fireball) {

    //If the player is invincible or the player does have the hammer powerup and is crouched down.
    if (instance_exists(obj_invincibility)) 
    || ((global.powerup == cs_hammer) && (other.crouch)) {
    
        instance_create(x-8,y-4,obj_smoke);
        instance_destroy();
        exit;
    }
    
    //Otherwise, hurt him.
    else
        with (other) event_user(0);
}

//Otherwise, perform following event
else if (sprite_index == spr_snowball)
    event_perform_object(obj_icebro_snowball, ev_collision, obj_playerparent);

