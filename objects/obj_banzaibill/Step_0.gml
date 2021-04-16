/// @description Make it appear

//If the enemy is invulnerable
if (vulnerable == 100) {

    //If the banzai bill is facing left
    if (xscale == -1)
    && (x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+48) {
    
        //Play 'Lightning' sound
        audio_play_sound(snd_lightning, 0, false);
        
        //Turn vulnerable
        vulnerable = 1;
        stomp = 0;
        
        //Set the horizontal speed
        hspeed = -1.5;
    }
    
    //Otherwise, if the banzai bill is facing right
    else if (xscale == 1)
    && (x > __view_get( e__VW.XView, 0 )-48) {
        
        //Play 'Lightning' sound
        audio_play_sound(snd_lightning, 0, false);
        
        //Turn vulnerable
        vulnerable = 1;
        stomp = 0;
        
        //Set the horizontal speed
        hspeed = -1.5;        
    }
}

//Turn visible
if (vulnerable != 100)
    visible = 1;

