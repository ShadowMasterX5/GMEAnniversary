/// @description Go to the destination room

//Stop map stream
obj_mapcontrol.alarm[3] = 1;

//Remember position
event_user(1);

//Create curtain out effect
if (instance_number(obj_curtainout) == 0) {

    with (instance_create(x+8,y+4,obj_curtainout)) 
        target = other.myroom;
}

