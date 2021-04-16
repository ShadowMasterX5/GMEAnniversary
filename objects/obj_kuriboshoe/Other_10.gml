/// @description Get off the shoe

with (instance_create(x,y,obj_getshoe)) {

    //Use correct shoe sprite
    switch (global.mountcolour) {
    
        //Baburu Shoe
        case (1): sprite_index = spr_baburushoe; break;
        
        //Dossun Shoe
        case (2): sprite_index = spr_dossunshoe; break;
        
        //Jugemu Shoe
        case (3): sprite_index = spr_jugemushoe; break;
        
        //Pentaro Shoe
        case (4): sprite_index = spr_pentaroshoe; break;
    }
    
    //Disallow pick up
    canpick = 0;
    
    //Allow it after a while
    alarm[0] = 60;
    
    //Move the player up
    obj_playerparent.y -= 16;
    
    //Set the facing direction
    if (instance_exists(obj_playerparent)) {
    
        //Hereby horizontal speed
        hspeed = obj_playerparent.xspeed/2;
    
        //Hereby facing direction
        dir = obj_playerparent.xscale;
    }
}

//Destroy
instance_destroy();

