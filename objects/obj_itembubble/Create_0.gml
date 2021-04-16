/// @description SMB2 / SMA4 Item Bubble

/*
**  This item uses creation code!
**
**  sprout = Pick from below:
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
**      cs_1up
**      cs_3up
**      cs_poison
**      cs_star
**      cs_key
**      cs_pswitch
**      cs_gswitch
**      cs_trampoline
**      cs_propellerblock
**      cs_beanstalk
*/

//Default value
sprout = cs_coin;

//Size
size = 1;
newsize = 1;

//Whether this block can be hit
ready = 0;

//Slope collision
myslope = instance_create(x,bbox_top,obj_slopeparent);
with (myslope)
    sprite_index = spr_itembubblemask;

/* */
/*  */
