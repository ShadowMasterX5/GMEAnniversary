/// @description Create explosion

//Create explosion
with (instance_create(x-8,y,obj_explosion)) {

    //Make the explosion not able to hurt the player
    harmplayer = false;
}

//Destroy
instance_destroy();

