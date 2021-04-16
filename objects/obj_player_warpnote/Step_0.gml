/// @description Update sprite and go to the new area if high enough

//Update sprite
if (holding) { //If the player is holding something

    sprite_index = scr_mario_hold();
    image_speed = 0;
    image_index = 1;
}
    
//Otherwise, if it's not holding anything
else {

    sprite_index = scr_mario_jump();
    image_speed = 0;
    image_index = 0;
}

//Go to the new area
if (y < __view_get( e__VW.YView, 0 )-33) {

    //Go to the assigned room
    if (instance_number(obj_fadein) == 0) {
    
        with (instance_create(0,0,obj_fadein)) 
            target = other.myroom;
    }
}

