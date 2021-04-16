/// @description Destroy billy
        
//Play 'Bump' sound
audio_play_sound(snd_bump, 0, false);

//Create a dead billy
with (instance_create(x, y, obj_billy_dead)) {

    image_xscale = other.image_xscale;
    if (other.hspeed > 0)
        hspeed = -1;
    else
        hspeed = 1;
}

//Destroy
instance_destroy();

