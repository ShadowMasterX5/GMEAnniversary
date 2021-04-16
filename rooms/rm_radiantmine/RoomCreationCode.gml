/// @description Level parameters

//If the level just started, perform events.
if (global.mariostart == 0) {

    //Turn on all green blocks
    global.onoffgreen = true;
    
    //Make all green blocks solid
    with (obj_onoffplatform_g) event_user(0);    
}

//Set background alpha
__background_set( e__BG.Alpha, 7, 0.15 );
__background_set( e__BG.HSpeed, 7, -0.25 );