/// @description Replace frame

//If the card has not been picked up yet.
if (!ready) {

    alarm[0] = 10;
    if (image_index != 2)
        image_index++;
    else
        image_index = 0;
}

