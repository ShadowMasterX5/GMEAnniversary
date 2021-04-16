/// @description Giant warp cannon

//If the player is not in cannon mode
if (cannon == 0) {

    //Enable cannon mode
    cannon = 2;
    
    //Stop moving
    speed = 0;
    
    //Set the facing direction
    image_xscale = other.direct;
    
    //Prepare to launch
    alarm[2] = 30;
}

