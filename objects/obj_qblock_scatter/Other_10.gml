/// @description Create some coins

//Play 'Scatter' sound
audio_play_sound(snd_scatter, 0, false);

//Create as many 'coins' needed
repeat (coins) {

    with (instance_create(x+8,ystart-16,obj_blockcoin2)) {
    
        hspeed = random_range(1,-1);
        vspeed = random_range(-2,-6);
    }
}

