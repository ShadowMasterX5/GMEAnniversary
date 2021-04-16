/// @description Beezo logic

//Set the facing direction
xscale = 1*sign(hspeed);

//If moving down
if (vspeed > 0) {

    //If the beezo is flying to the right
    if (ready == 1) {
    
        if (direction == 0) {
        
            speed = 3;
            direction = 0;
        }
        else if (direction != 0)
            direction += 0.75;
    }
    
    //Otherwise, if the swooper is flying to the left
    else if (ready == -1) {
    
        if (direction == 180) {
        
            speed = 3;
            direction = 180;
        }
        else if (direction != 180)
            direction -= 0.75;
    }
}

//Destroy if outside the view
if ((hspeed < 0) && (x < __view_get( e__VW.XView, 0 )-16))
|| ((hspeed > 0) && (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16))
    instance_destroy();

