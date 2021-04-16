/// @description Perform fade out and do not bring kuribo shoes

//Generate map water
instance_create(0,0,obj_mapwater);

//Fade out screen
instance_create(0,0,obj_fadeout);

//Make sure the player gets health
if (global.healthmode) {

    //If health was set to 0
    if (health == 0) {
    
        health = 2;
        if (global.powerup == cs_small)
            global.powerup = cs_big;
    }
}

//Begin playing the world map music
if (instance_exists(obj_mapplayer))
&& (global.died == 0)
&& (global.clear == 0)
    alarm[2] = 2;

//Make sure the player did not bring a kuribo shoe from a level
if (global.mount == 2)
    global.mount = 0;

