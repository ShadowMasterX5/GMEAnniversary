/// @description Rocket logic

//Go to the new area
if (y < __view_get( e__VW.YView, 0 )-33) {

    //Go to the assigned room
    if (instance_number(obj_fadein) == 0) {
    
        with (instance_create(0,0,obj_fadein)) 
            target = other.myroom;
    }
}

