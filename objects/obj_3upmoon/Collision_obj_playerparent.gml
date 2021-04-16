/// @description Collect the moon

//Add to the list
ds_map_add(global.moons, id, 1);

//Get 3 lives
with (instance_create(x,y,obj_score)) event_user(11);

//Destroy
instance_destroy();

//Create sparkle effect
with (instance_create(x,y,obj_smoke))
    sprite_index = spr_sparkle;

