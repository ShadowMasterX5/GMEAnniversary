/// @description Break it

//Play 'Break' sound
audio_play_sound(snd_break, 0, false);

//Get 50 points
score += 50;

//Destroy
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
