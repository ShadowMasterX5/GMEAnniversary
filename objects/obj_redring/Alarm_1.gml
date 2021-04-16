/// @description Destroy ring and all active coins

//Destroy red coins
with (obj_coin_r) {

    //If the ring id is the same as the coins
    if (ringid == other.ringid)
        instance_destroy();
}

//Destroy the ring
instance_destroy();

