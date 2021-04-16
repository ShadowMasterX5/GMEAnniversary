/// @description Block Boo logic

//Inherit event
event_inherited();

//If the boo can move
if (ready == 1) {
    
    //If the boo stopped moving, become a block
    if (movenowprev == 0) && (movenow == 1) {
    
        ready = 0;
        alarm[0] = 8;
        alarm[1] = 4;
        image_index = 1;
    }
    
    //Otherwise, if the boo just stopped moving, become a block
    else if (movenowprev == 1) && (movenow == 0) {
    
        ready = 0;
        alarm[0] = 8;
        alarm[2] = 4;
        image_index = 1;
        speed = 0;
    }
}

