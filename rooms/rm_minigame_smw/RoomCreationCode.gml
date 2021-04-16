/// @description SMW Guess Minigame

/*
//  Do not delete or modify this room, it is part of the engine.
//
//  If you want to add as a bonus area, just do a copy of this room
//  and modify the 'obj_warproom' located at the top pipe via
//  Creation Code
*/

//Create end warp
with (instance_create(336,64,obj_warproom)) {

    postchange = -1;
    postx = -1;
    posty = -1;
    myroom = room_next(room);
}