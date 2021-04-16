/// @description Handle ghost positions

//If the ghosts are active
if (active) {

    //Handle position of the ghosts
    for (i=0; i<ghosts; i++;) {
    
        //Check if the ghost exist first
        if (instance_exists(myghost[i])) {
            
            myghost[i].x = x+dist*cos((angle+(i*360/ghosts))*pi/180);
            myghost[i].y = y-8+dist*sin((angle+(i*360/ghosts))*pi/180);
        }
    }
    
    //Destroy if there's no ghosts
    if (count == 0)
        instance_destroy();    
}

//Disc angle
angle += myspeed*(clockwise*-1);
if (angle > 360)
    angle -= 360;

