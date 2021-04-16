/// @description A roulette block

/*
**  This item uses creation code!
**
**  sprout[0 ... 99] = Pick from below
**      cs_big
**      cs_fire
**      cs_ice
**      cs_carrot
**      cs_leaf
**      cs_frog
**      cs_tanooki
**      cs_hammer
**      cs_boomerang
**      cs_super
**      cs_bomb
**      cs_shell
**      cs_bee
**      cs_lightning
**      cs_penguin
**      cs_propeller
**      cs_cat
**      cs_1up
**      cs_3up
**      cs_poison
**      cs_pwing
**      cs_star
*/

//Default values:
sprout[0] = cs_big;

//Animate
alarm[2] = 7;

//Current frame
numb = 0;

//Whether this block can be hit
ready = 0;

//Make it solid
mysolid = instance_create(x,y,obj_solid);

/* */
/*  */
