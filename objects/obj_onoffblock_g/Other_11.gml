/// @description Trigger special block events

//If the switch is active
if (global.onoffgreen) {

    //Deactivate switch
    global.onoffgreen = 0;
    
    //Change yellow block
    with (obj_onoffplatform_g) event_user(1);
}

//Otherwise, if the switch is NOT active
else if (!global.onoffgreen) {

    //Deactivate switch
    global.onoffgreen = 1;
    
    //Change yellow block
    with (obj_onoffplatform_g) event_user(0);
}

