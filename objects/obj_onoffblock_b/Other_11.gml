/// @description Trigger special block events

//If the switch is active
if (global.onoffblue) {

    //Deactivate switch
    global.onoffblue = 0;
    
    //Change yellow block
    with (obj_onoffplatform_b) event_user(1);
}

//Otherwise, if the switch is NOT active
else if (!global.onoffblue) {

    //Deactivate switch
    global.onoffblue = 1;
    
    //Change yellow block
    with (obj_onoffplatform_b) event_user(0);
}

