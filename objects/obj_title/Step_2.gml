/// @description Update position of bars and background

//Update title position
if (y > ystart)
    vspeed -= 0.005;
else
    vspeed += 0.005;
    
//Update bars position
barx += 0.5;

//Update frame
frame += 0.5;

//Update background speed
__background_set( e__BG.HSpeed, 0, 0.25 );
__background_set( e__BG.VSpeed, 0, 0.25 );

