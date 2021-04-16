/// @description Loop the music

//If not audio is playing and the music is not disabled and the pswitch theme is not playing
if (!audio_is_playing(levelmusic)) 
if (musicdisable == 0)
&& (switchon == 0)
&& (gswitchon == 0)
    audio_play_sound(levelmusic, 1, true);

