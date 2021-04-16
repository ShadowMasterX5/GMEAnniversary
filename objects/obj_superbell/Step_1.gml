/// @description Animation

//Animate if not in contact with the ground
if (gravity != 0) {

    //Set animation speed
    image_speed = 0.2;
    
    //Gravity
    gravity = 0.15;
    
    //If the vertical speed is greater than 0
    if ((depth == 10) && (vspeed >= 0))
        depth = -2;
}
    
//Otherwise, 
else {

    image_speed = 0;
    image_index = 0;
}

