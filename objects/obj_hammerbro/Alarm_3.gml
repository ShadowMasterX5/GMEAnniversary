/// @descriptionThrow a hammer

//Play 'Hammer' sound
audio_play_sound(snd_hammer, 0, false);

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player is at the right.
    if (obj_playerparent.x > x)   
        with (instance_create(x-5,y-8,obj_hammerbro_hammer)) hspeed = 1;
    
    //Otherwise, if the player is at the left.
    else if (obj_playerparent.x < x)    
        with (instance_create(x+5,y-8,obj_hammerbro_hammer)) hspeed = -1;
}

//Otherwise, if it does not exist.
else {

    with (instance_create(x+5,y-8,obj_hammerbro_hammer))
        hspeed = -1;
}

//Set the default sprite.
shoot = 0;

//Throw another hammer.
alarm[2] = 15+random(round(75));

