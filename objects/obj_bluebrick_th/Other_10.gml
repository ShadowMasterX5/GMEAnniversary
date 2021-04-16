/// @description Destroy

//Play 'Break' sound
audio_play_sound(snd_break, 0, false);

//Destroy
instance_destroy();

//Create shards
with (instance_create(x,y+8,obj_shard_th)) {

    motion_set(45, 6);
    sprite_index = other.shardsprite;
}
with (instance_create(x,y+8,obj_shard_th)) {

    motion_set(60, 6);
    sprite_index = other.shardsprite;
}
with (instance_create(x,y+8,obj_shard_th)) {

    motion_set(120, 6);
    sprite_index = other.shardsprite;
}
with (instance_create(x,y+8,obj_shard_th)) {

    motion_set(135, 6);
    sprite_index = other.shardsprite;
}

