/// @description If there's a body part below, kill it too

if (image_index == 0) {

    with (mebelow) {
    
        //Create dead body effect
        instance_create(x, y, obj_pokey_dead);
        
        //If required... (Mainly a yoshi fix)
        event_user(1);
        
        //Destroy
        instance_destroy();
    }
}

