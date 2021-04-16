/// @description Pause before swooping to the left.

//Do not stop if not at the given coordinate
if (x < 304) {

    alarm[1] = 1;
    exit;
}

x = 304;
y = 48;
ready = 0;
speed = 0;
alarm[2] = 22;

