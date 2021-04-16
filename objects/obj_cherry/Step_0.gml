/// @description Cherry logic

//If the cherry has been collected
if (ready == true) {

    //If the cherry shrank already
    if (scale < 0.0125) {
    
        //Create smoke
        instance_create(x,y,obj_smoke);
        
        //Destroy;
        instance_destroy();
    }    
    
    //Change angle
    angle += 4;
    
    //Decrement size
    scale -= 0.0125;
}

