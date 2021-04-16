/// @description Launch the player out of a pipe cannon

//Play 'Explode' sound
audio_play_sound(snd_explode, 0, false);

//Create particles
repeat (16) {

    with (instance_create(x-8,y-8,obj_smoke)) {
    
        //Set motion
        motion_set(random_range(80,100), random(6));
        
        //Depth
        depth = 11;
        
        //Friction
        friction = 0.05;
    }
}

//Move up
vspeed = -4;

//Make it visible
visible = 1;

