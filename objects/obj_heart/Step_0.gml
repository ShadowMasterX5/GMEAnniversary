/// @description Heart logic

if (ready < 2) {

    if (ready == 0) {
    
        scale += 0.05;
        if (scale > 1.75)
            ready = 1;
    }
    else {
    
        scale -= 0.1;
        dir = -dir;
        if (scale < 1)
            ready = 0;   
    }
}
else if (ready ==  2){

    //Reduce size
    scale -= 0.02;
    
    //Change angle
    angle += 10;
    
    //Destroy
    if (scale < 0.02) {
    
        instance_create(x-8,y-8,obj_smoke);
        instance_destroy();
        exit;
    }
}

//Destroy if outside the room
if (y < -16)
    instance_destroy();

