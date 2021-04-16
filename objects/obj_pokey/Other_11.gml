/// @description Kill if this is a body part

//If this is not a head
if (image_index == 1) {

    //If this is a body part...
    with (mebelow) {
    
        //Create dead body effect
        instance_create(x, y, obj_pokey_dead);
        
        //Perform same event
        event_user(1);
        
        //Destroy
        instance_destroy();
    }
}

