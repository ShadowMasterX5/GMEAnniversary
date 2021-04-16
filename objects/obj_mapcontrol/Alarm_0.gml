/// @description Cycle between palettes

//Repeat
alarm[0] = 1;

//Make the player flash.
if (global.mapstar) {
    
    isflashing += 0.1;
    if (isflashing > 6)
        isflashing = 1;
}

