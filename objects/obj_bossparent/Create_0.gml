/// @description The parent object for all boss enemies

//How vulnerable is this enemy to various items?
//0: Normal
//1: Immune to fireballs
//2: Immune to all projectiles
//99: Invincible
//100: Invincible + Ignore projectiles
vulnerable = 0;

//How vulnerable is this enemy to the player?
//0: Normal
//1: Hurt Mario
//2: Hurt Mario + Mount Immunity
//3: Subcon
//4: Stomp
//-1: Phase through Mario
stomp = 0;

//Facing direction
xscale = 1;

//Whether the object is swimming
swimming = false;

//Invincibility frames
inv = 0;

//How many hits does this boss take to be defeated?
hitpoints = 0;

//How many projectile hits does this boss take to be defeated?
firehitpoints = 0;

