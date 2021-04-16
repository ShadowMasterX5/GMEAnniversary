/// @description Finish pull

//If the puller object does exist
if (instance_exists(obj_puller)) {
    
    //Create vegetable
    with (instance_create(obj_playerparent.x-8,y+8,obj_turnip_out)) {
    
        sprite_index = spr_powblock_large;
        myveggie = obj_powblock_up_large;
    }
    
    //Destroy
    instance_destroy();
}

