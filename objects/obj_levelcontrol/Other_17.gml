/// @description Activate ?-Switch events

//If the switch timer end sound is playing, stop it first
if (audio_is_playing(snd_switchtimer_end)) then audio_stop_sound(snd_switchtimer_end);

//Play the switch timer sound
if (!audio_is_playing(snd_switchtimer)) then audio_play_sound(snd_switchtimer, 0, true);

//Activate ?-Switch events
alarm[9] = 720;
alarm[10] = 900; 

