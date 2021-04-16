/// @description Set the object to follow

//If the main player object exists, ignore other player objects
if (instance_exists(obj_playerparent))
    follow = noone;
    
//Otherwise, check for a existing object
else {

    //Check for 'Warp'
    if (instance_exists(obj_player_warp))
        follow = obj_player_warp;
        
    //Check for 'Jump'
    else if (instance_exists(obj_player_jump))
        follow = obj_player_jump;
                
    //Check for 'Climb'
    else if (instance_exists(obj_player_climb))
        follow = obj_player_climb;
        
    //Check for 'Goal'
    else if (instance_exists(obj_playerparent_clear))
        follow = obj_playerparent_clear;
}

