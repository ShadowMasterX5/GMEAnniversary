/// @description Kill the player

//Reset up the timer
global.time = 0;

//Kill the player
with (instance_create(obj_playerparent.x,obj_playerparent.y,obj_player_dead)) timeup = 1;
with (obj_playerparent) instance_destroy();
exit;

