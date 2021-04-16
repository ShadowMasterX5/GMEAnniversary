/// @description Regular warp cannon

//If the player is not in cannon mode
if (cannon == 0) {

    //Enable cannon mode
    cannon = 1;
    
    //Stop moving
    speed = 0;
    
    //Prepare to launch
    alarm[1] = 16;
}

