/// @description Trigger special block events

with (obj_discoball) {

    //Check if the light exists
    if (instance_number(obj_light_disco) == 0)
        event_user(0);
    else
        event_user(1);
}

