/// @description Create a coin if no item was selected

//Create a coin
if (sprout == cs_coin)
    instance_create(x+8,ystart-16,obj_blockcoin);
    
//Create a coin if the the player is not invincible
else if (sprout == cs_coin_s)
&& (instance_number(obj_invincibility) == 0)
    instance_create(x+8,ystart-16,obj_blockcoin);

