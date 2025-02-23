/// @description scr_mario_goal()
function scr_mario_goal() {

	/*
	**  Usage:
	**      scr_mario_goal()
	**
	**  Purpose:
	**      Calls the appropiate flagpole sprite for Mario.
	*/

	switch (global.powerup) {

	    case (cs_small): return spr_mario_small_goal;
	    case (cs_big): return spr_mario_big_goal;
	    case (cs_fire): return spr_mario_fire_goal;
	    case (cs_ice): return spr_mario_ice_goal;
	    case (cs_carrot): return spr_mario_carrot_goal;
	    case (cs_leaf): return spr_mario_raccoon_goal;
	    case (cs_frog): return spr_mario_frog_goal;
	    case (cs_tanooki): return spr_mario_tanooki_goal;
	    case (cs_hammer): return spr_mario_hammer_goal;
	    case (cs_boomerang): return spr_mario_boomerang_goal;
	    case (cs_super): return spr_mario_super_goal;
	    case (cs_bomb): return spr_mario_bomb_goal;
	    case (cs_shell): return spr_mario_shell_goal;
	    case (cs_bee): return spr_mario_bee_goal;
	    case (cs_lightning): return spr_mario_lightning_goal;
	    case (cs_penguin): return spr_mario_penguin_goal;
	    case (cs_propeller): return spr_mario_propeller_goal;
	    case (cs_cat): return spr_mario_cat_goal;
	    case (cs_football): return spr_mario_football_goal;
	}



}
