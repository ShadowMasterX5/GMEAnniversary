/// @description Open blocked doors

//If the door is blocked with planks...
if (other.locked == 2) 

//...and the door is visible...
&& (visible) {

    //Open up the door with style?
    with (other) {
    
        //Blast wooden planks
        event_user(0);
        
        //Unlock it...
        locked = 0;
        
        ///...and remember it
        ds_map_add(global.doors, id, 1);
    }
}

