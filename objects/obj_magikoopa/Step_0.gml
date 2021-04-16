/// @description Magikoopa logic

//If the magikoopa is about to appear
if (ready == 0) {

    //If the player is inside the area
    if (instance_exists(obj_playerparent))
    && (obj_playerparent.x > xmin)
    && (obj_playerparent.x < xmax) {
        
        //Increment alpha
        image_alpha += 0.05;
        
        //If the magikoopa is done
        if (image_alpha > 1) {
        
            //Set both alpha and frame
            image_alpha = 1;
            image_index = 1;
            
            //Make vulnerable
            vulnerable = 1;
            stomp = 0;
            
            //Prepare a spell
            ready = 1;
            alarm[0] = 90;
        }
    }
}

//Otherwise, if the magikoopa is dissappearing
else if (ready == 2) {

    //Decrement alpha
    image_alpha -= 0.05;
    
    //If the magikoopa is done
    if (image_alpha < 0) {
    
        //Set both alpha and frame
        image_index = 0;
        image_alpha = 0;
        
        //End
        ready = 3;
        
        //Change position
        alarm[2] = 90;
    }
    
    //Make invulnerable
    vulnerable = 100;
    stomp = -1;   
}

//Go up if overlapping a slope
while (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,1)) y--;

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

