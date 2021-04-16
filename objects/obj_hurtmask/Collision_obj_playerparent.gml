/// @description Hurt player

//If the player is riding something, exit
if (global.mount > 0)
    exit;
    
//Otherwise, hurt the player
else
    with (other) event_user(0);

