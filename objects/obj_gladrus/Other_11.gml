/// @description Gladrus stomp event

//If the gladrus is not angry
if (charge == 0) && (squishy == 0) {

    //Get points based on combo
    if (obj_playerparent.hitcombo <= 6) //If the player did 6 or less consecutive stomps
        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(2+obj_playerparent.hitcombo);
    else {
            
        //If the combo is odd
        if (obj_playerparent.hitcombo % 2 == 1)
            with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(9);
        
        //Otherwise, if the combo is even
        else if (obj_playerparent.hitcombo % 2 == 0)
            with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(10);        
    }
    
    //Increment combo
    obj_playerparent.hitcombo++;
    
    //Squish walrus
    squishy = 1;
    image_speed = 0;
    image_index = 0;
    
    //Set scale
    fxs = 1.5;
    fys = 0.5;
    
    //Stop movement
    hspeed = 0;
}

