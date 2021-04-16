/// @description Sparkles

//Create slow spark effects
var a = 0;
repeat (8) {

    with (instance_create(x+8,y+4,obj_smoke)) {
    
        //Set the sprite
        sprite_index = spr_boltspark;
        
        //Animate
        image_speed = 0.1;
        
        //Motion
        motion_set(a,0.5);
    }
    a += 45;
}

//Create fast spark effects
var b = 22.5;
repeat (8) {

    with (instance_create(x+8,y+4,obj_smoke)) {
    
        //Set the sprite
        sprite_index = spr_boltspark;
        
        //Animate
        image_speed = 0.1;
        
        //Motion
        motion_set(b,1);
    }
    b += 45;
}

//Get 2000 points
with (instance_create(x,y,obj_score))
    event_user(6);

