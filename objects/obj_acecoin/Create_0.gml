/// @description A ace coin, collect 5 of these to earn an extra-life.

//Check if this object has been collected before.
if (ds_map_exists(global.acecoins,id)) {

    instance_destroy();
    exit;
}
    
//Do not animate
image_speed = 0;
image_index = 0;

