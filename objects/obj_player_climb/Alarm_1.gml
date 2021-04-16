/// @description Turn into a controllable player

//Create the new player
with (player_retrieve(x,y)) {

    //Force set 'Climb' state
    state = 3;    
}

//Destroy
instance_destroy();

