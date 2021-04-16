/// @description Spinner logic

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player does have the raccoon, tanooki or cat suit.
    if (global.powerup == cs_leaf)
    || (global.powerup == cs_tanooki) 
    || (global.powerup == cs_cat) {
    
        x = round(obj_playerparent.x);
        y = round(obj_playerparent.y);
    }
    else
        instance_destroy();
}
else
    instance_destroy();

