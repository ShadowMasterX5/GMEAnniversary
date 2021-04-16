/// @description Trouter logic

//Make it fall when reaching start position.
if ((y < ystart+39) && (ready == true)) {

    //Make it fall.
    ready = false;
    gravity = 0.2;
}

//Bounce if outside the room.
if (bbox_top > room_height) {

    if (!ready) {
    
        //Make it stop
        ready = true;
        
        //Stop after 10 steps.
        alarm[1] = 10;
    }
}

//Set the scale.
xscale = 1;

//Prevent it from falling too fast.
if (vspeed > 3)
    vspeed = 3;

