/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Allow bump
ready = 0;

//Play 'Switch' sound
audio_play_sound(snd_switch, 0, false);

//Reset position of all arrow blocks     
with (obj_arrowblock) {

    instance_create(x,y,obj_smoke);
    mysolid.x = xstart;
    mysolid.y = ystart;
    x = xstart;
    y = ystart;
}

