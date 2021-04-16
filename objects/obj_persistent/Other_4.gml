/// @description Set view parameters

//Make view 0 visible if not visible
__view_set( e__VW.Visible, 0, true );

//Enable views if not enabled
view_enabled = true;

//Update wport
__view_set( e__VW.WPort, 0, global.gw );

//Update hport
__view_set( e__VW.HPort, 0, global.gh );

//Update wview
__view_set( e__VW.WView, 0, global.gw );

//Update hview
__view_set( e__VW.HView, 0, global.gh ); 

//Update vborder
__view_set( e__VW.VBorder, 0, global.gh/2 );

//Update hborder
if (instance_exists(obj_levelcontrol))
	   __view_set( e__VW.HBorder, 0, (global.gw/2 )-8 );
	   
else 
    __view_set( e__VW.HBorder, 0, global.gw/2 );
	

//Make sure to give the player the big state if health is greater than 1
if (global.healthmode) {

    if (health > 1)
    && (global.powerup = cs_small)
        global.powerup = cs_big;
}

//Allow restart
restart = 0;

//Check if all coins have been collected
if (global.starcoins == (global.levelmax*3))
    global.gameclear = 1;
else
    global.gameclear = 0;

