/// @description Kuribo Shoe logic

//If this is a dossun shoe
if (sprite_index == spr_dossunshoe) {
    
    //Check for a quicksand pool
    qsand = collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom-4, obj_quicksand, 0, 0);
    if (qsand)
    && (bbox_bottom < qsand.yprevious+8) {
    
        //Stay on semisolid
        y = qsand.bbox_top-11;
        
        //Stop vertical speed
        vspeed = 0;
        gravity = 0;
    }
}

//Inherit event from parent
event_inherited();


