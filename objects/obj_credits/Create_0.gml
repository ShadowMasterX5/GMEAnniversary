/// @description Staff Roll

//Play 'Credits' theme
audio_play_sound(bgm_credits, 0, true);

//Set alpha
alpha = 0;

//Background bars position
barx = 0;

//Display "The End"
ready = 0;

//Display "Press Any Key!"
ready2 = 0;

//Current text
numb = 0;
for (i=0; i<87; i++) {

    text[i] = "";
    tcol[i] = c_white;
}

//Generate text
alarm[0] = 16;

