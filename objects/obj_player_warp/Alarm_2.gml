/// @description Launch the player out of a diagonal pipe cannon

//Play 'Explode' sound
audio_play_sound(snd_explode, 0, false);

//Create particles
repeat (16) {

    with (instance_create(x-8,y-8,obj_smoke)) {
    
        //Friction
        friction = 0.05;
        
        //Depth
        depth = 11;        
        
        //Set motion
        if (other.image_xscale == 1)
            motion_set(random_range(35,55), random(6));
        else
            motion_set(random_range(125,145), random(6));
    }
}

//Set the horizontal speed
hspeed = 4*sign(image_xscale);

//Set the vertical speed
vspeed = -4;

//Make it visible
visible = 1;

//Enable gravity
alarm[3] = 30;

