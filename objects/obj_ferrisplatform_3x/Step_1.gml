/// @description Ferris platform logic.

//If the platforms are moving.
if (active == true) {

    //Check if Mario is above the platforms.
    for (i=0; i<3; i++;) {
    
        //Check up the position of the platform.
        oldx = 0;
        oldy = 0;
        
        //Set the position of the platform.
        platform[i].x = x+size*cos((angle+(i*360/3))*pi/180);
        platform[i].y = y-8-size*sin((angle+(i*360/3))*pi/180);
    }
}

//Set the position of the platform.
angle += spd*(turn*-1);
if (angle > 360)
    angle -= 360;

