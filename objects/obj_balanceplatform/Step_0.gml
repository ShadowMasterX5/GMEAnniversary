/// @description Balance lift logic.

//If there is a passenger on the platform, speed up turning.
if (platform.passenger) {

    //Clockwise
    if (platform.x < self.x) {
    
        //Turn above origin
        if (!over_y) {
        
            //If speed is greater or equal to 0.
            if (dirspd >= 0) {
            
                direct = 1;
                dirspd += 0.03;
            }
            
            //Otherwise, speed it up.
            else if (direct == -1)
                dirspd += 0.015;
        }
        
        //Otherwise, turn below origin.
        else
            dirspd += 0.03;
    }
    
    //Counter Clockwise
    else if (platform.x >= self.x) {
    
        //Turn above origin
        if (!over_y) {
        
            //If speed is lower or equal to 0.
            if (dirspd <= 0) {
            
                direct = -1;
                dirspd -= 0.03;
            }
            
            //Otherwise, speed it up.
            else if (direct == 1)
                dirspd -= 0.015;
        }
        
        //Otherwise, turn below origin.
        else
            dirspd -= 0.03;
    }
    
    //Turn smooth
    if (abs(dirspd) > 3)
        dirspd /= 1.5;
}

else { //if there is NOT a passenger on the platform, slow down turning

    //Slow down until it stops
    dirspd = max(0,abs(dirspd)-0.015)*sign(dirspd);
    if ((dirspd < 0.015) && (dirspd > -0.015))
        dirspd = 0;
    
    //Turn smooth
    if (abs(dirspd) > 3.875)
        dirspd /= 1.9375;
        
    //Set position
    if ((direction < 90) && (direction > 270))
        direct = 1; //right side
    else
        direct = -1; //left side

    //Less the 360 degree turn limit if it's low
    if (platform.y > self.y+8)
        over_y = 1;
}

//Direction.
direction += dirspd;

//Return to default.
if (bbox_right < __view_get( e__VW.XView, 0 ) - 160)
|| (bbox_left > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 160)
|| (bbox_bottom < __view_get( e__VW.YView, 0 ) - 160)
|| (bbox_top > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 160)
    event_user(1);

