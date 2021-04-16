/// @description Brick goomba dead script

//Inherit event
event_inherited();

//Set dead sprite
imdead.sprite_index = spr_goomba_micro;

//Do not move
imdead.hspeed = 0;
imdead.x = xstart;

//Play 'Break' sound
audio_play_sound(snd_break, 0, false);

//Create shards
with (instance_create(x,y+8,obj_shard))
    motion_set(45, 6);
with (instance_create(x,y+8,obj_shard))
    motion_set(60, 6);
with (instance_create(x,y+8,obj_shard))
    motion_set(120, 6);
with (instance_create(x,y+8,obj_shard))
    motion_set(135, 6);

