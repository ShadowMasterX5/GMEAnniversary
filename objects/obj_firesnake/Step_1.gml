/// @description Make sure the body parts don't get lost

for (i=0; i<4; i++) {

    if (!instance_exists(mybody[i]))
        instance_activate_object(mybody[i]);
}

