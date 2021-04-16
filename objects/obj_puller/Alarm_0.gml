/// @description Make the player visible and destroy

//Force visibility of the player
with (obj_playerparent) {

    visible = 1;
    holding = 0;
    disablecontrol = false;
}

//Destroy
instance_destroy();

