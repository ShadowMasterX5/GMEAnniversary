/// @description Explosion mask

//Whether this explosion can hurt the player
harmplayer = 1;

//Play 'bob-omb' sound
audio_play_sound(snd_explode, 0, false);

//Combo
hitcombo = 0;

//Set the alpha
alpha = 0;

//Destroy
alarm[0] = 48;

//Create stars
alarm[1] = 1;

//Make the background flash
alarm[3] = 1;

//Create a smoke effect
repeat (32) {

    with (instance_create(x,y,obj_smoke)) {
    
        //Motion
        motion_set(random(360),random(4));
        
        //Friction
        friction = 0.05;
    }
}

