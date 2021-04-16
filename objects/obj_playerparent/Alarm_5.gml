/// @description Cycle between palettes

//Make the player flash if he's under the effects of the starman.
if (instance_exists(obj_invincibility)) {

    //Make the player flash.
    isflashing += 0.1;
    if (isflashing > 6)
        isflashing = 1;
    
    //Repeat the process.
    if (obj_invincibility.alarm[0] > 120)
        alarm[5] = 1;
    else
        alarm[5] = 4;
}
else {

    isflashing = 0;
    alarm[5] = 1;
}

