/// @description Level parameters

//Level skin
global.skin = 2;

//If the level just started, perform events.
if (global.mariostart == 0) {

    //Turn on all blue blocks
    global.onoffblue = true;
    
    //Make all green blocks solid
    with (obj_onoffplatform_b) event_user(0);    
}