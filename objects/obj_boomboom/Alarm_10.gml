/// @description Move towards the player

//Animate
image_speed = 0.2*increment;

//Hop if hitpoints are equal to 2
switch (hitpoints) {

    //2 Stomps left
    case (2): {
    
        alarm[1] = 120;
    } break;
}

//Make vulnerable
stomp = 4;
ready = 0;

//Jump
vspeed = -3;
y--;

//Follow player
alarm[11] = 60;

//Go after the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;

