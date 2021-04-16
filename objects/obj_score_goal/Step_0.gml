//Give out lives.

if (ready == 0) {
    
    //If the object is at the desired position.
    if (y < __view_get( e__VW.YView, 0 )+144) {
        
        //Snap into position
        y = __view_get( e__VW.YView, 0 )+144;
        
        //Stop vertical speed.
        vspeed = 0;
        
        //Mark as ready
        ready = 1;
        
        //Give out lives.
        switch (image_index) {
        
            //1UP
            case (0): {
            
                //If there's not spare lifes
                if (obj_persistent.addlives == 0) {
                
                    //Play '1up' sound
                    audio_play_sound(snd_1up, 0, false);
                
                    //Add a life instantly
                    lives++;
                }
                else                
                    with (obj_persistent) addlives += 1;                            
            } break;
        
            //2UP
            case (1): {
            
                //If there's not spare lifes
                if (obj_persistent.addlives == 0) {
                
                    //Play '1up' sound
                    audio_play_sound(snd_1up, 0, false);
                
                    //Add a life instantly
                    lives++;
                    
                    //Add a spare life
                    with (obj_persistent) {
                    
                        addlives++;
                        alarm[2] = 30;
                    }
                }
                else
                    with (obj_persistent) addlives += 2;
            } break;
            
            //3UP
            case (2): {
            
                //If there's not spare lifes
                if (obj_persistent.addlives == 0) {
                
                    //Play '1up' sound
                    audio_play_sound(snd_1up, 0, false);
                
                    //Add a life instantly
                    lives++;
                    
                    //Add a spare life
                    with (obj_persistent) {
                    
                        addlives += 2;
                        alarm[2] = 30;
                    }
                }
                else
                    with (obj_persistent) addlives += 3;
            } break;
            
            //5UP
            case (3): {
            
                //If there's not spare lifes
                if (obj_persistent.addlives == 0) {
                
                    //Play '1up' sound
                    audio_play_sound(snd_1up, 0, false);
                
                    //Add a life instantly
                    lives++;
                    
                    //Add a spare life
                    with (obj_persistent) {
                    
                        addlives += 4;
                        alarm[2] = 30;
                    }
                }
                else
                    with (obj_persistent) addlives += 5;
            } break;
        }
    }   
}

