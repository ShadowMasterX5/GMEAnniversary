/// @description The level manager, this is needed on every in-game level. Do not forget to place it.

/*
**  This item uses creation code!
**
**  levelmusic  = The level music (Any sound resource you load in)
**  leveltime   = The time limit in seconds (Optional)
**  camlock     = Whether to lock the camera in place
**  water       = Whether the area is a underwater area
*/

//Default Values:
levelmusic = noone;
leveltime = 0;
camlock = 1;
water = 0;

//Begin playing the music if the p-switch effect is not active or you did not carried a star from a previous room
if (global.pswitch == 0)
&& (global.starman == 0)
&& (global.mapstar == 0)
    alarm[0] = 2;
    
//Music not disabled
musicdisable = 0;

//Manage barrier
barrier = 1;
alarm[7] = 3;

//Manage foreground backgrounds
for (var i=0; i<8; i++) {

    bgfg[i] = 0;
    if (__background_get( e__BG.Foreground, i ) == true) {
    
        bgfg[i] = true;
        __background_set( e__BG.Foreground, i, false );
    }
}
alarm[8] = 3;

//PSwitch is on?
switchon = 0;

//GSwitch is on?
gswitchon = 0;

//Screen shake
shake = 0;

//Object to follow
follow = noone;

//P-Switch Warning
pwarning = 0;
gwarning = 0;

//Make sure the view follows this object.
__view_set( e__VW.Object, 0, id );

//Create HUD object
instance_create(0,0,obj_hud);

/* */
/*  */
