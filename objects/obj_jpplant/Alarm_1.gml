/// @description Spit fireballs

//Play 'Podoboo' sound
audio_play_sound(snd_podoboo, 0, false);

//Create fireballs
with (instance_create(x,y+4,obj_plantfire2)) {

    hspeed = 1;
    if (other.type == 2)
        sprite_index = spr_snowball;
}
with (instance_create(x,y+4,obj_plantfire2)) {

    hspeed = -1;
    if (other.type == 2)
        sprite_index = spr_snowball;
}

