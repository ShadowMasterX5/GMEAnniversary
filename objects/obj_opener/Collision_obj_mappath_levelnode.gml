/// @description Finish path opening

if (speed > 0)
&& (x == other.x)
&& (y == other.y) {

    //Play 'Coin' sound
    audio_play_sound(snd_coin, 0, false);
    
    //Destroy
    instance_destroy();
}

