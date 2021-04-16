/// @description Wiggler stomp

//If wiggler is not angry
if (state == 0) {

    //Get points based on combo
    if (obj_playerparent.hitcombo <= 6) //If the player did 6 or less consecutive stomps
        with (instance_create((bbox_left+bbox_right)/2-8, y, obj_score)) event_user(2+obj_playerparent.hitcombo);
    else
        with (instance_create((bbox_left+bbox_right)/2-8, y, obj_score)) event_user(9);
    
    //Increment combo
    obj_playerparent.hitcombo++;
    
    //Kill flower
    with (instance_create(x, y, obj_enemy_dead)) {
    
        sprite_index = spr_wiggler_flower;
        image_xscale = other.xscale;
        nospin = 1;
    }
        
    //Stop movement
    speed = 0;
    
    //Stunned state
    state = 1;
    
    //New length for body parts
    closeness = 8;
    
    //Sprite
    sprite_index = spr_wiggler_mad;
    
    //Stop animation
    image_speed = 0;
    
    //Update length and sprite
    for (i = 1; i < seg; i++)  {
    
        mybody[i].x = oldx[i*closeness];
        mybody[i].y = oldy[i*closeness];
        mybody[i].image_speed = 0;
        mybody[i].sprite_index = spr_wiggler_mad_body;
    }
    
    //Reset coodirnate values
    amount_previous = 85;
    
    //Cycle between palettes
    alarm[1] = 1;
    
    //Go after the player
    alarm[0] = 65;
}

