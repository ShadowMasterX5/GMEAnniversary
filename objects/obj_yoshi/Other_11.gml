/// @description Abandon yoshi

with (instance_create(x,y,obj_yoshi_abandon)) {

    //Hereby the same colour
    colour = other.colour;

    //If Yoshi was holding an item on his mouth
    if (other.mouthholder != noone) {
    
        image_index = 1;
        alarm[1] = 16;
    }
    
    //Vertical speed
    vspeed = 1;
    
    //Move the player up
    obj_playerparent.y -= 16;

    //Set the frame
    if (instance_exists(obj_playerparent)) {
    
        //Hereby horizontal speed
        hspeed = obj_playerparent.xspeed/2;
    
        //Hereby facing direction
        xscale = obj_playerparent.xscale;
    }
}

//Destroy
instance_destroy();

