/// @description Change frame until it shows up

//If the muncher is not shown
if (image_index < 4) {

    image_index++;
    alarm[0] = 8;
}
else {

    image_index = 4;
    alarm[1] = 90;
}

