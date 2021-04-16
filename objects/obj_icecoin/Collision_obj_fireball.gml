/// @description Destroy

//Create a coin out of this block
with (instance_create(x,y,obj_coin)) {

    if (instance_number(obj_coin) > 0)
        image_index = obj_coin.image_index;
}

//Create a smoke effect
instance_create(x,y,obj_smoke);

//Destroy the projectile
with (other) event_user(0);

//Destroy
instance_destroy();

