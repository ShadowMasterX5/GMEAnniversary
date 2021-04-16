/// @description Banzai Bill

//How vulnerable is this enemy to various items?
vulnerable = 100;

//How vulnerable is this enemy to the player?
stomp = -1;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
if (x < __view_get( e__VW.XView, 0 )+global.gw/2)
    xscale = 1;
else
    xscale = -1;

