/// @description The In-Level HUD

//SMB3 Card Holders
if (instance_exists(obj_goalcard))
    alpha = 2;
else
    alpha = 0;

//P-Meter flash
flash = 0;
alarm[0] = 7;

//Shake
shakex = 0;
shakey = 0;

//Fade
fade = 0;
fadetype = 1;

//Shake the counter
alarm[1] = 1;

