/// @description The player transformed into a statue

//Make the player invincible, disable his controls and stop him.
with (obj_playerparent) {
    
    //Stop Mario
    xspeed = 0;
    yspeed = 0;
    
    //Make Mario invisible.
    visible = false;
    
    //Make Mario invulnerable.
    invulnerable = true;
    
    //Disable Mario's controls
    disablecontrol = true;
}

//Make the statue visible.
alarm[0] = 2;

//Start blinking when time starts running out.
alarm[1] = 90;

//Time runs out.
alarm[2] = 180;

