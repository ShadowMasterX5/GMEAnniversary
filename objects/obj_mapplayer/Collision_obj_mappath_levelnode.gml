/// @description Stop when moving

if (speed > 0)
&& (x == other.x)
&& (y == other.y) {

    //Play 'Move' sound
    audio_play_sound(snd_move, 0, false);
    
    //Stop it
    speed = 0;
    
    //Snap on node
    x = other.x;
    y = other.y;
}

