/// @description Big Boo logic

//Handle movement
event_user(8);

//Cap speed
if (speed > 0.75) then speed = 0.75;
    
//Play 'Boo Big' sound if it was not moving
if (movenow == 1)
&& (movenowprev == 0)
&& (outside_view() == false)
    audio_play_sound(snd_boo_big, 0, false);

