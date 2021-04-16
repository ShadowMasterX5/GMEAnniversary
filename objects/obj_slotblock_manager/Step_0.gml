/// @description Slot Block Manager logic

//Check if all 4 blocks were hit
if (ready == 0) {

    if (myblock[0].ready) && (myblock[1].ready) 
    && (myblock[2].ready) && (myblock[3].ready)
        ready = 1;
}

//If all the 4 blocks were hit check the images from each one.
else {

    //Check first and second block
    if (myblock[1].image_index == myblock[0].image_index)
    && (myblock[2].image_index != myblock[0].image_index) {
    
        //If the manager didn't do the first check
        if (check == 0) {
        
            //Play 'Correct' sound
            audio_play_sound(snd_correct, 0, false);
    
            //Increment lives to award
            award++;
            
            //Increment check
            check = 1;
        }
        
        //If the manager did the first check, do the second one
        else if (check == 1) {
        
            //Check if the second and third one are equal
            if (myblock[2].image_index == myblock[3].image_index) {
            
                //Play 'Correct' sound
                audio_play_sound(snd_correct, 0, false);
            
                //Increment lives to award
                award++
                
                //Increment check
                check = 2
                
                //Give out prizes
                alarm[0] = 60;
            }
            
            //If they are not equal... give out prizes
            else {
            
                //Increment check
                check = 2;
            
                //Give out prizes
                alarm[0] = 60;
            }
        }
    }
    
    //Check first, second and third block
    else if (myblock[1].image_index == myblock[0].image_index)
    && (myblock[2].image_index == myblock[0].image_index)
    && (myblock[3].image_index != myblock[0].image_index) 
    && (check == 0) {
    
        //Play 'Correct' sound
        audio_play_sound(snd_correct, 0, false);
         
        //Increment lives to award
        award += 3;
        
        //Increment check
        check = 1;
                        
        //Give out prizes
        alarm[0] = 60;
    }
    
    //Check first, second and third block
    else if (myblock[1].image_index == myblock[0].image_index)
    && (myblock[2].image_index == myblock[0].image_index) 
    && (myblock[3].image_index == myblock[0].image_index) 
    && (check == 0) {
    
        //Play 'Correct' sound
        audio_play_sound(snd_correct, 0, false);
         
        //Increment lives to award
        award += 5;
        
        //Increment check
        check = 1;
                                
        //Give out prizes
        alarm[0] = 60;
    }
    
    //Otherwise if no combinations were made, get consolation prize.
    else if (check == 0) {
    
        //Play 'Wrong' sound
        audio_play_sound(snd_wrong, 0, false);
    
        //Do not give lives
        award = -1;
        
        //Increment check
        check = 1;
        
        //Give out prizes
        alarm[0] = 60;
    }
}

