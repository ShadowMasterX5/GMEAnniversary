/// @description Return to the map if no music is playing

if (audio_is_playing(bgm_sm2clear))
    alarm[2] = 1;
else
    endlevel();

