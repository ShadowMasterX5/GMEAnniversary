/// @description Light block logic

//Default event
event_inherited();

//If the light exists
if (instance_exists(mylight)) {

    //If held, increment size of light
    if (held)
    && (instance_exists(obj_playerparent)) {
    
        with (mylight) {
        
            //Set the horizontal scale
            image_xscale += 0.05;
            if (image_xscale > 1)
                image_xscale = 1;
                
            //Set the vertical scale
            image_yscale = image_xscale;
        }
    }
    
    //Otherwise, return to default
    else {
    
        with (mylight) {
        
            //Set the horizontal scale
            image_xscale -= 0.025;
            if (image_xscale < 0.25)
                image_xscale = 0.25;
                
            //Set the vertical scale
            image_yscale = image_xscale;
        }    
    }
}

