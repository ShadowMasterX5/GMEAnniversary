/// @description Turn and move the player

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is on this block
    if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,1,0))
    && (obj_playerparent.bbox_bottom < yprevious+5)
    && (obj_playerparent.state < 2)) {
    
        //Move the player
        with (obj_playerparent) {
        
            yspeed = -4;
            xspeed = 1.5;
        }
    }
}

//Change the turning phase.
if (turn == 0)
    turn = 1;
else if (turn == 1)
    turn = 2

//Repeat the process.
alarm[0] = 150;

