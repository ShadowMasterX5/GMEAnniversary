/// @description Move towards the target

//If the target does exist
if (target != -1) {

    //Destroy if the target does not exist
    if (!instance_exists(target)) {
    
        instance_destroy();
        exit;
    }
    
    //Set y position
    x = (target.bbox_left+target.bbox_right)/2;
    y = (target.bbox_top+target.bbox_bottom)/2;
}

