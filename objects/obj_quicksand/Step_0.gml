/// @description Hide the semisolid

//If the player is riding a kuribo shoe
if (global.mount == 2) {

    //If the shoe is a dossun shoe
    if (global.mountcolour = 2) {
    
        mycol.x = xstart;
        mycol.y = ystart+4;
    }
    
    //Otherwise
    else {
    
        mycol.x = -1000;
        mycol.y = -1000;
    }
}
else {
    
    mycol.x = -1000;
    mycol.y = -1000;    
}

