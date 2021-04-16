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

    //Create a coin
    instance_create(x,y,obj_blockcoin);
    
    //Destroy
    instance_destroy();
}

