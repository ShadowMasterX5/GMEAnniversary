/// @description You killed the player, happy now?

//Do not animate
image_speed = 0;

//Play sound
audio_play_sound(bgm_miss, 0, false);

//Stop stream and timer
with (obj_levelcontrol) {

    event_user(0);
    alarm[2] = 0;
}

//Shows "Time up" if time ran out
timeup = 0;
alarm[2] = 2;

//Subtract a life
lives--;

//Remove health
health = 0;

//Jump
alarm[0] = 60;

//Restart the room
alarm[1] = 200;

//Make the player do something in the map
global.died = true;

//Reset mount
global.mount = 0;

//Reset powerup
global.powerup = cs_small;

