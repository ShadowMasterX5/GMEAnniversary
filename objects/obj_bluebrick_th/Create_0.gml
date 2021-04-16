/// @description A held blue brick

//Default shard
shardsprite = spr_shard_th_a;

//Inherit create event
event_inherited();

//Animate
image_speed = 0.5;

//Blink
alarm[0] = 540;

//Destroy
alarm[1] = 600;

//Whether the block was kicked
ready = 0;

//Whether the block falls
ready2 = 0;

//Combo
hitcombo = 0;

//Whether this block can hurt Mario
harmplayer = 0;

