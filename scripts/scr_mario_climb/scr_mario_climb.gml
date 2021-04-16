/// @description scr_mario_climb()
function scr_mario_climb() {

	/*
	**  Usage:
	**      scr_mario_climb()
	**
	**  Purpose:
	**      Calls the appropiate climbing sprite for Mario.
	*/

	switch (global.powerup) {

	    case (cs_small): return spr_mario_small_climb;
	    case (cs_big): return spr_mario_big_climb;
	    case (cs_fire): return spr_mario_fire_climb;
	    case (cs_ice): return spr_mario_ice_climb;
	    case (cs_carrot): return spr_mario_carrot_climb;
	    case (cs_leaf): return spr_mario_raccoon_climb;
	    case (cs_frog): return spr_mario_frog_climb;
	    case (cs_tanooki): return spr_mario_tanooki_climb;
	    case (cs_hammer): return spr_mario_hammer_climb;
	    case (cs_boomerang): return spr_mario_boomerang_climb;
	    case (cs_super): return spr_mario_super_climb;
	    case (cs_bomb): return spr_mario_bomb_climb;
	    case (cs_shell): return spr_mario_shell_climb;
	    case (cs_bee): return spr_mario_bee_climb;
	    case (cs_lightning): return spr_mario_lightning_climb;
	    case (cs_penguin): return spr_mario_penguin_climb;
	    case (cs_propeller): return spr_mario_propeller_climb;
	    case (cs_cat): return spr_mario_cat_climb;
	    case (cs_football): return spr_mario_football_climb;
	}



}
