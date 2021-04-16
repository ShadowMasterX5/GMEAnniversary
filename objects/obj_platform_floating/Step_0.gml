/// @description Make the platform float

//If there's a water substance
if (water != -1) {

    if (y > water.y-8) {
    
        //Stop gravity
        gravity = 0;
        
        //Floats...
        vspeed -= 0.1;
    }
    
    else
        gravity = 0.1;    
}   

if (vspeed < -1) {

    vspeed = -1;
    if (sink == 1)
        sink = 2;
}

