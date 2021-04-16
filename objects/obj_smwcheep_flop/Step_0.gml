/// @description Flopping Cheep-Cheep logic

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

//If no gravity
if (gravity == 0) {

    //Change frame
    image_index = !image_index;

    //Choose flop
    flop = choose(1, -1);
    
    //Set horizontal speed
    hspeed = 1*sign(flop);
    
    //Set the vertical speed
    vspeed = -2;
}

//Check for a water object
var water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0);

//If the object is not underwater and makes contact with water, turn into a swimming cheep
if (water) {

    //If a random chance between 0 and 1 is 0
    if (choose(0,1) == 0) {
    
        instance_create(x,y,obj_smwcheep)
        instance_destroy();
        exit;
    }
    
    //Otherwise
    else {
    
        instance_create(x,y,obj_smwcheep_v)
        instance_destroy();
        exit;            
    }
}

//Set facing direction
xscale = flop;

