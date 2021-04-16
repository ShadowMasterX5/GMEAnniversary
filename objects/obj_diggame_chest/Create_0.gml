/// @description Digging minigame chest

//Do not animate
image_speed = 0;
image_index = 0;

//Whether the chest has been opened
ready = 0;

//Move it 1 pixel down
y++;

//Display message
alarm[2] = 30;

//Set the item to give
roll = round(random_range(0,10000));

//Set up the position of the chest
x = choose(64,144,224,304);

//Do not show Mario Start!
global.mariostart = 1;

//Prevent level exit
global.levelbeat = 0;

//Create controller object
if (!instance_exists(obj_levelcontrol))
    instance_create(0,0,obj_levelcontrol);

