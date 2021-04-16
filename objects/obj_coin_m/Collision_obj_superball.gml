/// @description Collect the coin

//Create a coin
with (instance_create(x,ystart,obj_blockcoin)) sprite_index = spr_pcoin;

//Destroy this coin
instance_destroy();

//Exit this event
exit;

