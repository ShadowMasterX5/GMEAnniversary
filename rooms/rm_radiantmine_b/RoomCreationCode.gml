/// @description Level parameters

//Skin
global.skin = 1;

//Background 7
__background_set( e__BG.Alpha, 7, 0.25 );
__background_set( e__BG.HSpeed, 7, -0.25 );

//If the level just started, perform events.
if (global.mariostart == 0) {

    //Turn on all green blocks
    global.onoffgreen = true;
    
    //Make all green blocks solid
    with (obj_onoffplatform_g) event_user(0);    
}