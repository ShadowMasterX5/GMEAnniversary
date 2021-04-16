/// @description A shoe that the player can ride

//On shoe
global.mount = 2;

//Do not animate
image_speed = 0;

//Offset values
offset = 0

//Manage offset values
alarm[0] = 2

//Create smoke effect
alarm[1] = 4;

//The player's previous state
stateprev = 0;

//Is the jugemu shoe flying?
flying = 0;

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

//Movement
movement = instance_create(0,0,obj_kuriboshoe_movement);

