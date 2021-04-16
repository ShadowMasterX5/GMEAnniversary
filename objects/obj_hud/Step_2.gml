/// @description HUD Logic

//Fade timer to red if less than 100 seconds
if (global.time > -1)
&& (obj_levelcontrol.leveltime != 0) {

    //If there's less than 100 seconds left
    if (global.time <= 100) {
    
        //Fade out
        if (fadetype == -1) {
        
            fade -= 0.05;
            if (fade < 0.05) {
            
                fade = 0;
                fadetype = 1;
            }
        }
        
        //Otherwise, fade in
        else {
        
            fade += 0.05;
            if (fade > 1) {
            
                fade = 1;
                fadetype = -1;
            }            
        }        
    }
}

//If the goal card exists, show HUD cards
if (instance_exists(obj_goalcard)) {

    if (obj_levelcontrol.x > obj_goalcard.x-384) 
    || (obj_levelcontrol.x > obj_goalcard.x)
        alpha = 2;
    else
        alpha -= 0.025;
}

//Otherwise, hide HUD cards
else
    alpha = 0;

