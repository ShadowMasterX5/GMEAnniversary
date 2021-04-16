/// @description Check what item is holding the item

//Check 'Warp'
if (instance_exists(obj_player_warp))
    follow = obj_player_warp;
    
//Check 'Door'
else if (instance_exists(obj_player_door))
    follow = obj_player_door;
    
//Check 'Jump'
else if (instance_exists(obj_player_jump))
    follow = obj_player_jump;
    
//Check 'Warpnote'
else if (instance_exists(obj_player_warpnote))
    follow = obj_player_warpnote;
    
//Reset to default
else
    follow = noone;

