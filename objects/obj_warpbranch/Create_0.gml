/// @description Warps Mario to another location based on what stuff has been collected.

/*
**  This works like obj_warproom but different, check the object for more details.
*/

//Default values
//0: Coins
//1: Time
//2: A-Coins Collected
mode = 0;
check = 0;

//Targets
target_a = 0;
target_b = 0;
target_c = 0;

//Warp methods
for (i=0; i<3; i++) {

    postchange[i] = -1;
    postx[i] = 0;
    posty[i] = 0;
    myroom[i] = room_next(room);
}

//Coins collected in the area
coins = 0;

/* */
/*  */
