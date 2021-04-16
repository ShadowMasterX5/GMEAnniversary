/// @description Make the player collect the cherry

//If the cherry was not collected before.
if (ready == 0) {

    //Play 'Cherry' sound
    audio_play_sound(snd_cherry, 0, false);
    
    //Get 100 points
    with (instance_create(x,y,obj_score)) event_user(1);    
    
    //Collect it
    ready = 1;
        
    //Increment cherries
    global.cherries++;
    
    //Give out a sorcerer if this is the fifth cherry
    if (global.cherries == 5) {
    
        //Play 'Inventory' sound
        audio_play_sound(snd_cherry2, 0, false);
        
        //Reset cherries
        global.cherries = 0;
        
        //Create a sorcerer
        instance_create(__view_get( e__VW.XView, 0 )+global.gw/2,__view_get( e__VW.YView, 0 )+global.gh+16,obj_sorcerer);
    }
}

