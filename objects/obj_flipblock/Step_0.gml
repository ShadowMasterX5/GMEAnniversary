/// @description Break from above if possible

//If the player is small, exit.
if (global.powerup == cs_small)
exit;

//Check for the player object
if (instance_exists(obj_playerparent)) {

    if (place_meeting(x,y-(obj_playerparent.yspeed*2.5),obj_playerparent))
    && (obj_playerparent.yspeed > 0) 
    && (obj_playerparent.stompstyle == 1) {
        
        //Play 'Break' sound
        audio_play_sound(snd_break, 0, false);
        
        //Make player bounce
        with (obj_playerparent) event_user(1);
            
        //Get 50 points
        score += 50;
        
        //Destroy
        instance_destroy();
        
        //Create shards
        with (instance_create(x+8,y+8,obj_shard)) {
        
            motion_set(45, 6);
            sprite_index = spr_shard_y;
        }
        with (instance_create(x+8,y+8,obj_shard)) {
        
            motion_set(60, 6);
            sprite_index = spr_shard_y;
        }
        with (instance_create(x+8,y+8,obj_shard)) {
        
            motion_set(120, 6);
            sprite_index = spr_shard_y;
        }
        with (instance_create(x+8,y+8,obj_shard)) {
        
            motion_set(135, 6);
            sprite_index = spr_shard_y;
        }
    }
}

