/// @description Shoot billies if held

if (held) 
&& (instance_exists(obj_playerparent)) {

    //Play 'Explosion' sound
    audio_play_sound(snd_explode, 0, false);
    
    //Repeat
    alarm[0] = 30;
    
    //Create billy
    with (instance_create(x, y+9, obj_billy)) {
    
        hspeed = 4*sign(obj_playerparent.xscale);
        image_xscale = 1*sign(obj_playerparent.xscale);
    }
}
else
    alarm[0] = 30;

