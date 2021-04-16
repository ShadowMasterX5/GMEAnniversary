/// @description Stop

//If there's no gravity
if (gravity == 0) {

    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Stop horizontal movement
    hspeed = 0;
    
    //Shoot a projectile.
    alarm[1] = 32;
}

//Otherwise, hold on
else
    alarm[0] = 1;

