/// @description Pause before swooping to the right.

//Do not stop if not at the given coordinate
if (x > 64) {

    alarm[4] = 1;
    exit;
}

x = 64;
y = 48;
ready = 0;
speed = 0;
alarm[5] = 22;

