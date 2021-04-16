/// @description It's the player on the map

//Check if the position was modified before
if (ds_map_exists(global.mapscreen,"mapx")) {

    //Place the player in position
    x = ds_map_find_value(global.mapscreen,"mapx");
    y = ds_map_find_value(global.mapscreen,"mapy");
}
else {

    //Set up a map
    ds_map_add(global.mapscreen,"mapx",x);
    ds_map_add(global.mapscreen,"mapy",y);
}

//Do not animate
image_speed = 0;
image_index = 0;
alarm[2] = 1;

//Facing direction
xscale = 1;

//Whether the player can move
ready = 0;

//Whether the player can enter a level
letsgo = 0;

//Current player frame
frame = 0;

//Current arrow frame / alpha
anim = 0;

//Room to go
myroom = noone;

//Open adyacent paths
if (global.clear > 0) {

    alarm[0] = 2;
    if (global.clear == 3) {
    
        //Allow clearance
        global.clear = 0;
    
        //Do not allow movement
        ready = 1;
        
        //Allow movement after a while
        alarm[3] = 90;    
    }
}

//If the player died on the level
if (global.died == 1) {

    //Reset dead variable
    global.died = 2;
    
    //Do not allow movement
    ready = 1
    
    //Allow movement after a while
    alarm[3] = 90;
}

//Reset time
global.time = 0;

//Reset berries
global.berries = 0;

//Reset red coins
global.redcoins = 0;

//Reset starman and pswitch
global.starman = 0;
global.pswitch = 0;
global.gswitch = 0;

//Reset pwing effect
global.pwing = 0;

//Reset Mario Start! text
global.mariostart = false;

//Reset 'Return to map' option
global.levelbeat = 0;

//Reset on/off blocks
global.onoffyellow = 0;
global.onoffgreen = 0;
global.onoffred = 0;
global.onoffblue = 0;

//Reset held variables
global.carrieditem = noone;
global.carriedsprite = noone;

//Reset all door states
ds_map_clear(global.doors);

//Reset ace coins
ds_map_clear(global.acecoins);

//Reset red coin rings
ds_map_clear(global.redrings);



