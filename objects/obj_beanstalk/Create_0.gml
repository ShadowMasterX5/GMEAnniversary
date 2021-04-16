/// @description A climbable beanstalk

//Animate
image_speed = 0.15;

//Create a climbable surface.
ready = false;
alarm[0] = 2;

//Move up
vspeed = -1;

//Destination room
myroom = room_next(room);

//Play a vine sprout sound
audio_play_sound(snd_vinesprout, 0, false);

