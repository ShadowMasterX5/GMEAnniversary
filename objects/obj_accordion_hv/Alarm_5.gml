/// @description Stop it

with (myblock[1]) vspeed = 0;
with (myblock[2]) vspeed = 0;
with (myblock[3]) vspeed = 0;
with (myblock[4]) vspeed = 0;
with (myblock[1]) y = ystart+32;
with (myblock[2]) y = ystart+16;
with (myblock[3]) y = ystart-16;
with (myblock[4]) y = ystart-32;

//Shorten platform
alarm[6] = 120;

