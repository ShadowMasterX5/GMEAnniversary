/// @description The parent for all enemy objects

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

//How vulnerable is this enemy to yoshi?
//0: Edible
//1: Edible, create item
//2: Not edible
edible = 0;

//Facing direction
xscale = 1;

//Whether the object is swimming
swimming = false;

