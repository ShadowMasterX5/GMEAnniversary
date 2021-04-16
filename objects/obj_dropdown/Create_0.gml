/// @description The player is doing a drop-down attack

//Animate
image_speed = 0.35;

//Combo
hitcombo = 0;

//Whether the player can cancel the dropdown
ready = 0;

//Make the player invincible, disable his controls and stop him.
with (obj_playerparent) {
    
    //Stop the player
    xspeed = 0;
    yspeed = 0;
    
    //Disable gravity
    disablegrav = 0;
    
    //Make Mario invisible.
    visible = false;
    
    //Make Mario invulnerable.
    invulnerable = true;
    
    //Disable Mario's controls
    disablecontrol = true;
}

