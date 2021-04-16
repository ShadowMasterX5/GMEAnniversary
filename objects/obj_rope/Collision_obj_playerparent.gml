/// @description Player rope logic

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player is climbing
    if (obj_playerparent.state == 3) {
    
        //If there's not a solid on the player's way.
        if (!collision_rectangle(obj_playerparent.bbox_left,obj_playerparent.bbox_top+4,obj_playerparent.bbox_right,obj_playerparent.bbox_bottom-4,obj_solid,1,0)) {
        
            //Make the player move towards the parent.
            obj_playerparent.x += parent.x-parent.xprevious;
            obj_playerparent.y += parent.y-parent.yprevious;
        }
        
        //Make the engine move if we didn't.
        ison = true;
    }
}

