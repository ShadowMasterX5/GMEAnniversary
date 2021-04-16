/// @description Spit fire and then go inside the pipe

//If the plant can spit fire
if (fires > 0) {

    //Play 'Podoboo' sound
    audio_play_sound(snd_podoboo, 0, false);
    
    //Create fire
    with (instance_create(x,y-4,obj_plantfire)) {
    
        //If the player does exist
        if (instance_exists(obj_playerparent)) {
        
            //Set the horizontal speed
            hspeed = 1*sign(other.xscale);
            
            //Set the vertical speed
            if (obj_playerparent.y < y)
                vspeed = -0.5;
            else
                vspeed = 0.5;
        }
        
        //Otherwise, spit at the last direction
        else {
        
            //Set the horizontal speed
            hspeed = -1;
            
            //Set the vertical speed
            vspeed = -0.5;
        }
        
        //If the plant spits ice, turn into a snowball
        if (other.ice)
            sprite_index = spr_snowball;
    }

    //Repeat
    alarm[2] = 60;
    
    //Decrement fires
    fires--;
    
    //Increment prev. fires
    prevfires++
}

//Otherwise, go inside
else {

    //Reset fires
    fires = prevfires;
    prevfires = 0;

    //Set the vertical speed
    vspeed = 1;
    
    //Stop
    alarm[3] = 32;    
}

