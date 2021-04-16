/// @description Warps Mario to a different room

/*
**  This item uses creation code!
**
**  postchange = Pick from below: (Optional)
**      0: Mario
**      1: Warp Mario
**      2: Jump Spawn
**      3: Climb Spawn
**      4: Rocket Spawn
**
**  postx = New x coordinate
**  posty = New y coordinate
**  myroom = Destination room
*/

//Default Values:
postchange = -1;
postx = 0;
posty = 0;
myroom = room_next(room);

/* */
/*  */
