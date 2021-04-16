/// @description Shoot fire if the rider exists

//If the rider does exist
if (instance_exists(rider)) {

    //Play 'Podoboo' sound
    audio_play_sound(snd_podoboo, 0, false);
    
    //Spit a fireball towards the player
    with (instance_create(x,y-12,obj_autobomb_fire)) {
    
        image_xscale = 1*sign(other.xscale);
        hspeed = 2*sign(other.xscale);
    }
}

//Spit a fireball
alarm[0] = 120;

