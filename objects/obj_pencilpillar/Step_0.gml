/// @description Pencil pillar logic

//If moving
if (speed > 0) {

    //If there's a end marker in position
    if (collision_rectangle(x,y,x+15,y+15,obj_endmarker,0,0)) {
    
        //Stop vertical speed
        vspeed = 0;
        
        //Snap in position
        move_snap(16,16);
        
        //Move again
        alarm[0] = 100;
    }
}

