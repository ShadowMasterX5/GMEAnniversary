/// @description Move back down or get destroyed

//If the player does not have the small powerup.
if (global.powerup != cs_small) {

    //Play 'Break' sound
    audio_play_sound(snd_break, 0, false);
    
    //Get 50 points
    score += 50;
    
    //Destroy
    instance_destroy();
    
    //Create shards
    with (instance_create(x+8,y+8,obj_shard)) {
    
        motion_set(45, 6);
        sprite_index = spr_brick;
    }
    with (instance_create(x+8,y+8,obj_shard)) {
    
        motion_set(60, 6);
        sprite_index = spr_brick;
    }
    with (instance_create(x+8,y+8,obj_shard)) {
    
        motion_set(120, 6);
        sprite_index = spr_brick;
    }
    with (instance_create(x+8,y+8,obj_shard)) {
    
        motion_set(135, 6);
        sprite_index = spr_brick;
    }
}

vspeed = 2;
alarm[1] = 4;

