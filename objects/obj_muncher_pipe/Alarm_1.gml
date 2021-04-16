/// @description Change frame until it shows up

//If the muncher is not shown
if (image_index > 0) {

    image_index--;
    alarm[1] = 8;
}
else {

    image_index = 0;
    alarm[0] = 90;
}

