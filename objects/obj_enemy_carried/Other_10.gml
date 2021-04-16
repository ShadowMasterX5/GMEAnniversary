/// @description Turn back into a normal enemy

//If the enemy can turn back
if (turnback != -1) {

    //Create appropiate object
    with (instance_create(x,y,turnback)) {
    
        //If this object is a bomb, hereby timer
        aa = other.aa;
        
        //Create a moving heart if the enemy is big
        if (other.turnback == obj_ninji_big)
        || (other.turnback == obj_shyguy_big)
        || (other.turnback == obj_shyguy_big_b)
            with (instance_create(x,y,obj_heart)) vspeed = -0.5;
    }
    
    //Destroy
    instance_destroy();
}

