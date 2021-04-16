/// @description Carrot lift logic (Player)
/// @param Player

//If the player is on this moving platform
if ((collision_rectangle(bbox_left,bbox_top-5,bbox_right,bbox_top+4,obj_playerparent,0,0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state < 2)) {

    //If the platform is not moving
    if (ready == 0) {
    
        //Play 'Trampoline' sound
        audio_play_sound(snd_trampoline, 0, false);
        
        //Move it
        ready = 1;
        
        //Move up
        vspeed = -1.5;
    }

    //Check for a moving platform
    var check = collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_semisolid,0,1);
    if (check)
    || (collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_bottom-1,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom+1,obj_quicksand,0,0))
        exit;

    //Snap the player vertically
    obj_playerparent.y = bbox_top-15;
}

