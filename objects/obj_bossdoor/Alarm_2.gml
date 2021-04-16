/// @description Finish Door Animation

//Play 'Castle Break' sound
audio_play_sound(snd_castlebreak, 0, false);

//Set frame
image_index = 3;

//Create Smoke
instance_create(x, y+48, obj_smoke);

//With the level controller
with (obj_levelcontrol) {

    //Level music
    levelmusic = bgm_boss;
    
    //Play it
    alarm[0] = 1;
}

//Start boss fight
with (obj_bossparent) alarm[10] = 2;

