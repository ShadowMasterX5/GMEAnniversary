/// @description Default boss death script (Creates orb and destroys)
/// @param Creates orb and destroys

//Create orb if there no boss parents left
if (instance_number(obj_bossparent) == 1) {

    //Play 'Orb' sound
    audio_play_sound(snd_bossorb, 0, false);

    //Create Orb
    with (instance_create(x, y, obj_bossorb)) 
        vspeed = -5;
}

//Create smoke
var a;
a = 0;
repeat (8) {

    with (instance_create(x-8,y,obj_smoke)) {
    
        motion_set(0+(45*a), 2);
        a += 45;
    }
}

//Destroy
instance_destroy();

