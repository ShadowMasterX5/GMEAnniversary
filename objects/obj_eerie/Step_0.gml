/// @description Eerie logic

//If waving down and up
if (wave == 1) {

    //If below the ystart position
    if (y > ystart)
        vspeed -= 0.0324;
    else
        vspeed += 0.0324;
}

//Otherwise, if waving up and down
else if (wave == -1) {

    //If above the ystart position
    if (y < ystart)
        vspeed += 0.0324;
    else
        vspeed -= 0.0324;
}

//Set the facing direction
xscale = 1*sign(hspeed);

