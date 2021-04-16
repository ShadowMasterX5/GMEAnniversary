/// @description Destroy

//Make the player vulnerable
if (instance_exists(obj_playerparent)) {

    obj_playerparent.invulnerable = false;
}

//Destroy
instance_destroy();

