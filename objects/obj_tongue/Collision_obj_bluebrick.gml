/// @description Eat bricks

if (!hunger) {

    //Item eaten
    hunger = 1;

    //Move tongue back
    ready = 1;
    alarm[0] = 8;

    //Put it in Yoshi's mouth
    obj_yoshi.mouthholder = obj_bluebrick_th;
    
    //Remember its sprite
    obj_yoshi.mouthsprite = other.heldsprite;
    
    //Food sprite
    foodsprite = other.heldsprite;

    //Food offset
    foodoffset = 0;

    //Destroy food
    with (other) instance_destroy();
}

