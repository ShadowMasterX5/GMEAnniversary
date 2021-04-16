/// @description Open up the cheat introduction window.

/*
// WARNING: Remember to call 'global.cheats == true' on every cheat you introduce.
*/

var cheat = get_string("Please enter a cheat code. WARNING: You won't be able to save if you enter a correct cheat.", "");

//Switch between cheats
switch (cheat) {

    //needafireflower
    case ("needafireflower"): {
    
        audio_play_sound(snd_inventory, 0, false)
        global.powerup = cs_fire;
        global.cheats = true;
    } break;
    
    //needarainbow
    case ("needarainbow"): {
    
        audio_play_sound(snd_inventory, 0, false);
        global.mapstar = true;
        global.cheats = true;
    } break;

    default:
        audio_play_sound(snd_wrong, 0, false); break;
}

/* */
/*  */
