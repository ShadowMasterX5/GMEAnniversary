/// @description Warps Mario to a different room

/*
**  This item uses creation code!
**
**  postchange = Pick from below: (Optional)
**      0: Mario
**      1: Warp Mario
**      2: Jump Spawn
**      3: Climb Spawn
**
**  postx   = New x coordinate
**  posty   = New y coordinate
**  myroom  = Destination room (Optional)
**
**  locked  = Is this door locked with a key or blocked with wood?
**      0: No lock
**      1: Locked with key
**      2: Blocked with wood
*/

//Default Values:
postchange = -1;
postx = x;
posty = y;
locked = 0;
myroom = room_next(room);

//Do not animate
image_speed = 0;

/* */
/*  */
