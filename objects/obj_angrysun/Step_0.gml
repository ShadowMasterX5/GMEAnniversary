/// @description Angry sun logic

//If the angry sun is waiting...
if (ready == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player reached the point where the sun will attack
        if (obj_playerparent.x > xmin) {
        
            //Animate
            image_speed = 0.1;
            
            //Went nut
            ready = 1;
            
            //Leave trail
            alarm[0] = 1;
            
            //Create movement object
            movement = instance_create(0,0,obj_angrysun_movement);
        }
    }
}

//Otherwise, if the sun went nuts.
else {

    //If the movement object exists
    if (instance_exists(movement)) {
    
        x = round(__view_get( e__VW.XView, 0 ))+movement.x;
        y = round(__view_get( e__VW.YView, 0 ))+movement.y;
    }
}

//Change sprite into a happy moon and make it invulnerable
if (happy == true) {

    //Set sprite
    sprite_index = spr_happymoon;
    
    //Make invulnerable
    vulnerable = 100;
    stomp = -1;
    edible = 2;
}

