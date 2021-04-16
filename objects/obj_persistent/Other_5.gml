/// @description If the game is givin' out extra lives, give them at once after exiting a room

if (addlives > 0) {

    lives += addlives;
    addlives = 0;
    alarm[2] = -1;
}

