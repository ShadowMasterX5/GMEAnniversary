/// @description Item bubble logic

//Make sure it gets the new size
if (ready) {

    //If the size is greater than the objective size, shrink it.
    if (size > newsize) {
    
        //Reduce size
        size -= 0.05;
        
        //Move down
        y++;
        
        //Move slope down
        if (instance_exists(myslope))
            with (myslope) y++;   
    }
        
    //Otherwise, make it able to be hit
    else
        alarm[0] = 1;
}

//Set the same size
image_xscale = size;
image_yscale = size;

//Make sure the slope gets the same size
with (myslope) {

    image_xscale = other.size;
    image_yscale = other.size;
}

