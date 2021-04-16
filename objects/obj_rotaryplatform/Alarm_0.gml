/// @description Initialize movement

//If the movement type is set to 0
if (type == 0) {

    //Make it solid
    myspin = instance_create(x,y+2,obj_spinmask);
    
    //Start spinning
    alarm[1] = 45;
}

//Otherwise, spin infinitely
else if (type == 1) {

    //Create spin collision
    spincollision = instance_create(x+16,y-24,obj_spincollision);
    image_speed = 1.2;
}

