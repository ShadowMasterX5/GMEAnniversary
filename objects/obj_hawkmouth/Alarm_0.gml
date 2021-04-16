/// @description Play fanfare and stop music

//Play 'Crystal' sound
audio_play_sound(snd_crystal, 0, false);

//Reset level music
global.levelmusic = noone;

//Stop level music
with (obj_levelcontrol) {
    
    //Play the music
    alarm[0] = room_speed * round(audio_sound_length(snd_crystal));
    
    //Stop the music
    alarm[1] = 1;
}

