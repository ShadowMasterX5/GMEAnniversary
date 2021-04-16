/// @description Shoot a spike ball

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//If the gray p-switch is active
else if (obj_levelcontrol.gswitchon == true) {

    alarm[0] = 1;
    exit;
}

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

//Create cannon ball
instance_create(x,y,obj_cannonball_spike);

//Throw again
alarm[0] = 200;

