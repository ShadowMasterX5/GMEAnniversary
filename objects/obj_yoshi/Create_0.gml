/// @description Yoshi

//Default colour
colour = 0;
if (global.mountcolour != 0) {

    colour = global.mountcolour;
}

//On yoshi
global.mount = 1;

//Is Yoshi licking?
licking = 0;

//Is Yoshi's tongue locked in position
locked = false;

//Facing direction
xscale = 1;

//What's inside Yoshi's mouth?
mouthholder = noone;

//Sprite of the item inside Yoshi's mouth
mouthsprite = noone;

//Enemy inside the held item
mouthnumb = 0;

//Whether Yoshi has ate a powerup
powerup = noone;

//Whether Yoshi has ate a berry
berry = noone;

//Animation
anim = 0;

//Is Yoshi jumping?
jumping = 0;

//Is Yoshi flying?
flying = 0;

//Flying animation
flyanim = 0;

//Flutter
flutter = 0;

//Flutter limit
fluttertime = 0;

//Player's current frame
f = 0;

//Player's y position
myy = 0;

//Player's previous state
stateprev = 0;

//If an item was carried from the previous room.
if (global.carrieditem != noone) {

    //Remember the item and reset it.
    mouthholder = global.carrieditem;
    global.carrieditem = noone;
    
    //Remember the sprite and reset it.
    mouthsprite = global.carriedsprite;
    global.carritedsprite = noone;
}

