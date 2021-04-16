/// @description A red coin ring

/*
**  This item uses creation code!
**
**  sprout = Pick from below:
**      cs_fire
**      cs_ice
**      cs_carrot
**      cs_leaf
**      cs_frog
**      cs_tanooki
**      cs_hammer
**      cs_boomerang
**      cs_super
**      cs_bomb
**      cs_shell
**      cs_bee
**      cs_lightning
**      cs_penguin
**      cs_propeller
**      cs_cat
**
**  ringid = A number id to spawn the red coins.
*/

//Default variables:
ringid = 0;
sprout = cs_fire;

//Destroy if this ring has been touched before
if (ds_map_find_value(global.redrings,id)) {

    instance_destroy();
    exit;
}

//Animate
image_speed = 0.3;

/* */
/*  */
