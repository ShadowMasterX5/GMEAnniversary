/// @description Warp to another room

//If the position needs to be changed in the new room.
if (postchange != -1) {

    //Remember the spawn type
    global.postchange = postchange;
    
    //Remember the x spawn position.
    global.postx = postx+16;
    
    //Remember the y spawn position.
    global.posty = posty+16;
}

if (instance_number(obj_fadein) == 0)
    with (instance_create(0,0,obj_fadein)) target = other.myroom;

