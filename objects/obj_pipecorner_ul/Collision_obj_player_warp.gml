/// @description Collision with the player when it is warping

//If the player is moving to the right and the player is at the middle, make the player move upwards.
if (other.direction = 0) && (other.x > x+16) {

    //With the player
    with (other) {
    
        //Set up the direction
        direction = 90;
        
        //Snap into position
        x = other.x+16;
        y = other.y+16;
    }
}

//Otherwise, if the player is moving down and the player is at the middle, make the player move to the left.
else if (other.direction == 270) && (other.y > y+16) {

    //With the player
    with (other) {
    
        //Set up the direction
        direction = 180;
        
        //Snap into position
        x = other.x+16;
        y = other.y+16;
    }    
}

