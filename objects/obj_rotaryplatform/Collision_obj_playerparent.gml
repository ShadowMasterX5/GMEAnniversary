/// @description Push the player if moving

//If the platform is moving and the player is below the platform, make him spin
if (image_speed > 0.5)
&& (other.bbox_bottom > yprevious+5) {

    //Deny variable jump
    jumpnow = 2;
    
    //If the player is below
    if (other.y > y) {
    
        other.xspeed = 2+random(2);
        other.yspeed = 4;
    }
    
    //Otherwise, if the player is above
    else {
    
        other.xspeed = -2+random(2);
        other.vspeed = -5;
    }
}

