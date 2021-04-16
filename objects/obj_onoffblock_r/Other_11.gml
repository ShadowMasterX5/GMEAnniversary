/// @description Trigger special block events

//If the switch is active
if (global.onoffred) {

    //Deactivate switch
    global.onoffred = 0;
    
    //Change yellow block
    with (obj_onoffplatform_r) event_user(1);
}

//Otherwise, if the switch is NOT active
else if (!global.onoffred) {

    //Deactivate switch
    global.onoffred = 1;
    
    //Change yellow block
    with (obj_onoffplatform_r) event_user(0);
}

