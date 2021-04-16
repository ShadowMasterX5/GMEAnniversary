/// @description The player is evolving, ok no :)

//Sets the animation to reproduce.
//0: Small to big
//1: Big to small
//2: Powerup
//3: Powerdown
//4: Poof
sequence = 0;

//Sets and starts the animation sequences.
ready = 0;

//How many times does the animation loop?
loop = 0;

//Make Mario invisible
if (instance_exists(obj_playerparent)) {

    //Make Mario invisible.
    obj_playerparent.visible = false;
    
    //Snap to position.
    x = round(obj_playerparent.x);
    y = round(obj_playerparent.y);
    
    //Set the depth
    depth = obj_playerparent.depth;
    
    //Hereby Mario's colour
    isflashing = obj_playerparent.isflashing;
    
    //Hereby Mario's facing direction.
    image_xscale = obj_playerparent.xscale;    
}

//Make Yoshi invisible
if (instance_exists(obj_yoshi)) {

    //Hereby both sprite and colour from a existing yoshi
    yoshisprite = obj_yoshi.sprite_index;
    yoshicolour = obj_yoshi.colour;
    
    //Make Yoshi invisible
    with (obj_yoshi) visible = 0;
}

//Deactivate tides
if (instance_exists(obj_tides)) {

    with (obj_tides) visible = 0;
    instance_deactivate_object(obj_tides);
}

//Make Kuribo shoe invisible
if (instance_exists(obj_kuriboshoe))
    with (obj_kuriboshoe) visible = 0;
    
//Make puller invisible
if (instance_exists(obj_puller))
    with (obj_puller) visible = false;

//Make spinner invisible
if (instance_exists(obj_spinner))
    with (obj_spinner) visible = false;

//Make dropdown invisible
if (instance_exists(obj_dropdown))
    with (obj_dropdown) visible = false;

//Make wallrunner invisible
if (instance_exists(obj_wallrunner))
    with (obj_wallrunner) visible = false;

//Start animation
alarm[0] = 1;

