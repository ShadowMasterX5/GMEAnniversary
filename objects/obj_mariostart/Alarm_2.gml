/// @description End the Mario Start! screen

//Create a curtain effect.
instance_create(0,0,obj_curtainin);

//Re-activate everything
instance_activate_all();

//If a star was picked up in the inventory, become invulnerable
if (global.mapstar) {

    instance_create(0,0,obj_invincibility);
    global.mapstar = false;
}

//Destroy
instance_destroy();

