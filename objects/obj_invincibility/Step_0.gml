/// @description Invincibility logic

if (instance_exists(obj_playerparent)) {

    //Snap into the player position
    x = obj_playerparent.x;
    y = obj_playerparent.y;
    
    //Make sure the player is invincible
    with (obj_playerparent) {
    
        if (!invulnerable) {
        
            invulnerable = true;
            alarm[0] = -1;
            alarm[1] = -1;
        }
    }
    
    //Hereby the same mask as the player
    if (obj_playerparent.mask_index = spr_mask)
        mask_index = spr_starmask;
    else
        mask_index = spr_starmask_big;
}

//Warn the player that the starman effect is running out
if ((warning == 0) && (alarm[0] <= 120)) {

    //Play 'Warning' sound
    audio_play_sound(snd_warning, 0, false);
    
    //Warn
    warning = 1;
}
else if ((warning == 1) && (alarm[0] > 120)) 
    warning = 0;

