/// @description Statue logic

//If the player does not have the tanooki powerup
if (global.powerup != cs_tanooki)
    instance_destroy();

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the statue combo keys are still held.
    if ((keyboard_check(global.controlkey)) && (keyboard_check(global.downkey))) {
    
        //Snap into position
        x = round(obj_playerparent.x);
        y = round(obj_playerparent.y);
        
        //Make the player invisible
        obj_playerparent.visible = false;
        
        //Make the player invulnerable
        obj_playerparent.invulnerable = true;
    }
    else
        instance_destroy();
}
else
    instance_destroy();

