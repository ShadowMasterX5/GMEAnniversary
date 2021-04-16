/// @description Prepare to give bonus

if (ready == 0) {

    //If the hawkmouth closed it's mouth
    if (myhawk.ready == 5) {
    
        //Stop him inside the mouth
        ready = 1;
        
        //Stop speed
        speed = 0;
        
        //Take points off time and add it to score
        alarm[1] = 120;
    }
}

//Update yoshi anim
anim += 0.15

//Make sure to set the alt exit if the hawk is a secret one
if (myhawk.sprite_index == spr_hawkmouth_secret)
    global.clear = 2;

