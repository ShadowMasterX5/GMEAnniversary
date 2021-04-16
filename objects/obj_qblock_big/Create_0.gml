/// @description Big Question Mark Block

/*
**  This item uses creation code!
**
**  sprout = Pick from below:
**      cs_coin_s
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
**      cs_yoshi
**      cs_yoshi_r
**      cs_yoshi_y
**      cs_yoshi_b
**      cs_kuriboshoe
**      cs_baburushoe
**      cs_dossunshoe
**      cs_jugemushoe
**      cs_golden
**      cs_1up
**      cs_3up
**      cs_poison
**      cs_pwing
**      cs_star
**      cs_key
**      cs_pswitch
**      cs_gswitch
**      cs_trampoline
**      cs_propellerblock
**      cs_beanstalk
**      cs_billy
*/

//Default value
sprout = cs_coin;

//Animate
image_speed = 0.15;

//Whether this block can be hit
ready = 0;

//"?" mark position
xx = xstart;

//Make it solid
mysolid = instance_create(x,y,obj_solid);
    mysolid.image_xscale = 2;
    mysolid.image_yscale = 2;

/* */
/*  */
