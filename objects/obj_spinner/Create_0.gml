/// @description The player is spinning it's tail.

//Check powerup
switch (global.powerup) {
    
    //Cat
    case (cs_cat): {
    
        //Play 'Scratch' sound
        audio_play_sound(snd_scratch, 0, false);
        
        //Set the speed
        image_speed = 0.2;
        
        //Set the sprite
        sprite_index = spr_mario_cat_attack2;        
    } break;
    
    //Tanooki
    case (cs_tanooki): {
    
        //Play 'Spin' sound
        audio_play_sound(snd_spin, 0, false);
        
        //Set the speed
        image_speed = 0.3;
        
        //Set the sprite
        sprite_index = spr_mario_tanooki_attack;
    } break;
    
    //Default
    default: {
        
        //Play 'Spin' sound
        audio_play_sound(snd_spin, 0, false);
        
        //Set the speed
        image_speed = 0.3;
        
        //Set the sprite
        sprite_index = spr_mario_raccoon_attack;
    } break;
}

//Combo
hitcombo = 0;

//Whether this block hit a block
ready = 0;

//Make the player invisible
obj_playerparent.visible = 0;

