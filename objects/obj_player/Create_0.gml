/// @description Mario's initial position

//Make sure the player did not come from another room.
if (global.postchange == -1) {

    //Create a new object based on this object coordinates
    player_retrieve(x,y);
}

//Destroy
instance_destroy();

