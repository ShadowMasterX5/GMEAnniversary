/// @description Create a coin if no item was selected

//Create a coin
for (var i=0; i<3; i++;) {

    //Create a coin
    if (sprout[i] == cs_coin)
        instance_create(x+(i*16),ystart-16,obj_blockcoin);
        
    //Create a coin if the player is not invincible
    else if (sprout[i] == cs_coin_s)
    && (instance_number(obj_invincibility) == 0)
        instance_create(x+(i*16),ystart-16,obj_blockcoin);
}

