/// @description Warp to another room.

//With the warp object.
with (other) {

    //Value to check
    switch (mode) {
    
        //Coins
        case (0): 
            check = coins; 
            break;
        
        //Time
        case (1): 
            check = global.time; 
            break;
        
        //A-Coins
        case (2): 
            check = ds_map_size(global.acecoins); 
            break;
    }
            
    //Range A
    if ((check >= target_a) && (check < target_b)) {
    
        //If the position needs to be changed
        if (postchange[0] != -1) {
        
            //Remember the spawn type
            global.postchange = postchange[0];
            
            //Remember the x spawn position.
            global.postx = postx[0]+16;
            
            //Remember the y spawn position.
            global.posty = posty[0]+16;                                    
        }
        
        //Go to the assigned room
        if (instance_number(obj_fadein) == 0)
            with (instance_create(0, 0, obj_fadein)) target = other.myroom[0];
    }
    
    //Range B
    else if ((check >= target_b) && (check < target_c)) {
    
        //If the position needs to be changed
        if (postchange[1] != -1) {
        
            //Remember the spawn type
            global.postchange = postchange[1];
            
            //Remember the x spawn position.
            global.postx = postx[1]+16;
            
            //Remember the y spawn position.
            global.posty = posty[1]+16;                                    
        }
        
        //Go to the assigned room
        if (instance_number(obj_fadein) == 0)
            with (instance_create(0, 0, obj_fadein)) target = other.myroom[1];                            
    }
    
    //Range C
    else if (check > target_c) {
    
        //If the position needs to be changed
        if (postchange[2] != -1) {
        
            //Remember the spawn type
            global.postchange = postchange[2];
            
            //Remember the x spawn position.
            global.postx = postx[2]+16;
            
            //Remember the y spawn position.
            global.posty = posty[2]+16;                                    
        }
        
        //Go to the assigned room
        if (instance_number(obj_fadein) == 0)
            with (instance_create(0, 0, obj_fadein)) target = other.myroom[2];                     
    }
}

//Stop
speed = 0;

//Snap in grid
move_snap(16,16);

