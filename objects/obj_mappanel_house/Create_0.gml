/// @description Mushroom House

/*
**  This item uses creation code!
**
**  exitdir = Regular exit direction
**  exitalt = Secret exit direction      
**      0: Up
**      1: Down
**      2: Left
**      3: Right
**
**  saveme = Whether to save the game after beating
**
**  powerup[0] = Powerup in middle chest (Leave the bottom ones blank for one chest.)
**  powerup[1] = Powerup in left chest
**  powerup[2] = Powerup in right chest
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
**      cs_star
*/

//Default variables
levelname = "Mushroom House"
powerup[0] = -1;
powerup[1] = -1;
powerup[2] = -1;
levelid = -1;
exitdir = 10;
exitalt = 10;
saveme = 1;
myroom = rm_bonus;
block = 0;

//Animate
image_speed = 0;

//Whether the level has been beaten
beaten = 0;

//Whether a checkpoint was hit inside the level
checkpoint = noone;

//Check map value
if (ds_map_find_value(global.mapscreen,id) > 0) {

    //Make it visible
    visible = 1;
    
    //If the game is 100% percent clear
    if (global.gameclear == 100)
        exit;
        
    //Otherwise
    else if (ds_map_find_value(global.mapscreen,id) == 2) {
    
        beaten = 2;
        image_index = 1;
    }
}

/* */
/*  */
