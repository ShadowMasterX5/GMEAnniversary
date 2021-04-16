/// @description Handles Scaling.

if (ready == 0) {

    scale += 0.05;
    
    if (scale > 1) {
    
        scale = 1;
        ready = 1;
    }
}

if (ready == 2) {

    //Decrement scale
    scale -= 0.05;   
    if (scale < 0.05)
        scale = 0;
}

//Destroy if quitable
if (scale == 0)
&& (quitable = 1)
    instance_destroy();

