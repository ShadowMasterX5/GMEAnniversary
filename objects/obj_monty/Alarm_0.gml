/// @description Hop a little bit

//If there's no gravity
if (gravity == 0) {

    //Stop animation
    image_speed = 0;
    image_index = 0;
    
    //Hop
    vspeed = -2;
    
    //Boost hop
    y--;
}
else
    alarm[0] = 1;

