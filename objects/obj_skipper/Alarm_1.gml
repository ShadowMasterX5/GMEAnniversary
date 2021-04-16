/// @description Play a sound depending of what room you are

if (room != rm_disclaimer)
    audio_play_sound(snd_1up, 0, false);
else
    audio_play_sound(snd_coin, 0, false);

