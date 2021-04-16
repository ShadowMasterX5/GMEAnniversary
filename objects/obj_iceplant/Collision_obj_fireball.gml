/// @description Destroy

//Create a coin out of this block
with (instance_create(x,y,obj_muncher)) {

    if (instance_number(obj_muncher) > 0)
        image_index = obj_muncher.image_index;
}

//Create a smoke effect
instance_create(x,y,obj_smoke);

//Destroy the projectile
with (other) event_user(0);

//Destroy
instance_destroy();

