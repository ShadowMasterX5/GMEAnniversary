/// @description Create a coin if no item was selected and initialize the counter

instance_create(x,ystart-16,obj_blockcoin);

//Increment bonus
get++;

//Start timer
if (coiny == 0) {

    coiny = 1;
    alarm[2] = 240;
}

