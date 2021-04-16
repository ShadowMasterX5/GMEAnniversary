/// @description Finish pull

//If the puller object exists
if (instance_exists(obj_puller)) {

    //With the player
    with (obj_playerparent) {
    
        visible = 1;
        holding = 0;
        disablecontrol = false;
    }
    
    //Destroy puller
    with (obj_puller) instance_destroy();
    
    //Destroy
    instance_destroy();
}

//Otherwise, generate a coin
else {

    //Create item
    if (sprout == cs_propeller) {
    
        //Create propeller mushroom
        instance_create(x+8,obj_playerparent.bbox_top-16,obj_pickup_propeller);
    }
    else {
    
        with (sprite_make_object(x+8,obj_playerparent.bbox_top-16,constant_get_sprite(sprout))) {
        
            //Set the horizontal speed
            hspeed = 1*obj_playerparent.xscale;
            
            //Set the vertical speed
            vspeed = -4;
        }
    }
    
    //Destroy
    instance_destroy();
}

