/// @description Trigger special block events

//If the switch is active
if (global.onoffyellow) {

    //Deactivate switch
    global.onoffyellow = 0;
    
    //Change yellow block
    with (obj_onoffplatform_y) event_user(1);
}

//Otherwise, if the switch is NOT active
else if (!global.onoffyellow) {

    //Deactivate switch
    global.onoffyellow = 1;
    
    //Change yellow block
    with (obj_onoffplatform_y) event_user(0);
}

