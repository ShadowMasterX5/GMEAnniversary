/// @description Yoshi platform logic

if (global.mount == 1) {

    //Check if yoshi exists and get it's colour
    if (instance_exists(obj_yoshi)) {
    
        colour = obj_yoshi.colour;
    }

    //Set activated frame
    image_index = 1;
    
    //Make sure the solid is in place
    mytop.x = x;
    mytop.y = y;
}
else {

    //Set deactivated frame
    image_index = 0;
    
    //Make sure the solid is not in place
    mytop.x = -1000000;
    mytop.y = -1000000;
}

