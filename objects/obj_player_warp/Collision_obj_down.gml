/// @description Go down!

//If the player is on cannon mode, turn into a controllable player.
if (cannon == 1)
    event_user(0);

else {

    //Set the direction.
    direction = 270;
    
    //Snap to position.
    move_snap(16,16);
}

