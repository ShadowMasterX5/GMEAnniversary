/// @description Make the player bounce

//If the player has the propeller suit and the down key is pressed.
if (global.powerup == cs_propeller)
&& (keyboard_check(global.downkey))
&& (stompstyle != 0)
    exit;
    
//Otherwise, if the player is not climbing
else if (state == 3)
    exit;
    
//Otherwise, bounce
else {

    //Set the vertical speed
    yspeed = -4;
    
    //Boost jump
    y--;
    
    //Switch to jump state
    state = 2;
    
    //Check if the 'Jump' key is pressed.
    if (keyboard_check(global.shiftkey))
        jumping = 1;
    else
        jumping = 2;
}

