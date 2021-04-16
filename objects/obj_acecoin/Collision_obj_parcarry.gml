/// @description Collect

//Check if the ace coin is not animating and the vegetable is not being held
if (other.held == 0) 
&& (image_speed == 0) {

    //Play 'Scatter' sound.
    audio_play_sound(snd_scatter, 0, false);
    
    //Animate
    image_speed = 0.5;
    
    //Destroy
    alarm[0] = 60;
    
    //Spark
    alarm[1] = 1;
    
    //Remember that the coin was collected.
    ds_map_add(global.acecoins,id,1);
    
    //If 5 or more coins are collected.
    if (ds_map_size(global.acecoins) >= 5) {
    
        //Extra life
        with (instance_create(x,y,obj_score))
            event_user(9);
    }
    
    //Otherwise, get points
    else {
    
        //Get points
        with (instance_create(x,y,obj_score))
            event_user(4+ds_map_size(global.acecoins));
    }
}

