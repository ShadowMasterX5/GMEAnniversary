/// @description Break out

//Play 'Break' sound
audio_play_sound(snd_break, 0, false);

//Make a monty appear
with (instance_create(x,y,obj_monty_jump)) type = other.type;

//Do stuff
if (sprite_index == spr_montymole_dirt_wall) {

    //Turn into a purely decorative hole
    sprite_index = spr_montymole_b;
    
    //Do not animate
    image_speed = 0;
    image_index = 1;
}
else
instance_destroy();

//Create shards
with (instance_create(x+8,y+8,obj_shard))
    motion_set(45, 6);
with (instance_create(x+8,y+8,obj_shard))
    motion_set(60, 6);
with (instance_create(x+8,y+8,obj_shard))
    motion_set(120, 6);
with (instance_create(x+8,y+8,obj_shard))
    motion_set(135, 6);

