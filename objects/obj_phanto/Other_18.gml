/// @description Handle scale

//If the phanto is moving
if (ready == 2) {

    //If the key exists
    if (instance_exists(obj_pullkey_up)) {
    
        //If the key is being held
        if (obj_pullkey_up.held) {
    
            //Decrement scale
            scale -= 0.0125;
            if (scale < 0.5)
                scale = 0.5;
        }
        
        //Otherwise
        else {
        
            //Increment scale
            scale += 0.0125;
            if (scale > 1)
                scale = 1;
        }
    }
    
    //Otherwise, increment scale
    else {
    
        scale += 0.0125;
        if (scale > 1)
            scale = 1;
    }
}

//Change normal scale
image_xscale = scale;
image_yscale = scale;

