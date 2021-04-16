/// @description Finish pull

//If the puller object exists
if (instance_exists(obj_puller)) {

    //With the player
    with (obj_playerparent) {
    
        visible = 1;
        holding = 0;
        disablecontrol = false;
    }
    
    //Destroy puller
    with (obj_puller) instance_destroy();
    
    //Destroy
    instance_destroy();
}

//Otherwise, generate a coin
else {

    //Create 5 coins
    repeat (5) {
    
        with (instance_create(x+8,obj_playerparent.bbox_top-16,obj_blockcoin2)) {
        
            hspeed = random_range(1,-1);
            vspeed = random_range(-1,-4);
        }        
    }
    
    //Destroy
    instance_destroy();
}

