/// @description Create a coin

//If the puller object does exist
if (instance_exists(obj_playerparent)) 
&& (keyboard_check(global.controlkey)) {
    
    //Create coin
    with (instance_create(x,y,obj_blockcoin)) vspeed = -4;
    
    //Change the puller sprite
    with (obj_puller) sprite_index = scr_mario_duck();
    
    //End pull
    alarm[1] = 15;
    
    //Destroy
    visible = 0;
}

