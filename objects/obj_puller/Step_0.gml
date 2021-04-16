/// @description Puller logic

//Make sure the player's gravity is disabled
if (instance_exists(obj_playerparent)) {

    //Make sure to deny gravity
    with (obj_playerparent) {
    
        yspeed = 0;
        ygrav = 0;
    }
    
    //Make the player invisible
    obj_playerparent.visible = 0;
    
    //Snap in player's position
    x = round(obj_playerparent.x);
    y = round(obj_playerparent.y);
}

