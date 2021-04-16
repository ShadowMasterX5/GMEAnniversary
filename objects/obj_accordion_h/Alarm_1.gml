/// @description Stop it

with (myblock[1]) hspeed = 0;
with (myblock[2]) hspeed = 0;
with (myblock[3]) hspeed = 0;
with (myblock[4]) hspeed = 0;
with (myblock[1]) x = xstart+32;
with (myblock[2]) x = xstart+16;
with (myblock[3]) x = xstart-16;
with (myblock[4]) x = xstart-32;

//Shorten platform
alarm[2] = 120;

