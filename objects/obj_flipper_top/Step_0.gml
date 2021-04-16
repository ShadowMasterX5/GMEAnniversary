/// @description Top flipper logic

//If the flipper is not opened...
if (ready < 2)

//...and the player or a npc is on the opposite direction.
&& ((collision_rectangle(x,y+15,x+63,y+17,obj_playerparent,0,0))
|| (collision_rectangle(x,y+15,x+63,y+17,obj_physicsparent,0,0))) {

    //Set the frame
    image_index = 3;
    
    //Close up the flipper if it's closed
    if (ready == 0) {
    
        ready = 1;
        with (mysolid) {
        
            x = xstart;
            y = ystart;
        }
    }
}

//Otherwise, open up the flipper if the player or a npc is on place
else if ((collision_rectangle(x,y-9,x+63,y+3,obj_playerparent,0,0))
|| (collision_rectangle(x,y-9,x+63,y+3,obj_physicsparent,0,0))) {

    //If the flipper is not fully opened.
    if (ready != 2) {
    
        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);            
        
        //Destroy solid mask
        with (mysolid) {
        
            x = -1000;
            y = -1000;
        }
        
        //Open it
        ready = 2;
        
        //Change frame
        alarm[0] = 2;
        alarm[1] = 4;
    }
}

//Otherwise, if the flipper is open and the player or npc goes to the opposite side.
else if (ready == 2) 
&& (!collision_rectangle(x,y+16,x+63,y-4,obj_playerparent,0,0)) 
&& (!collision_rectangle(x,y+16,x+63,y-4,obj_physicsparent,0,0)) {

    //Close up
    ready = 3;
    
    //Change frame
    alarm[0] = 2;
    alarm[2] = 4;
}

//Otherwise, if the flipper is fully closed
else if (image_index == 3) {

    //Set the frame
    image_index = 0;    
    
    //Make it solid
    with (mysolid) {
    
        x = xstart;
        y = ystart;
    }
}

