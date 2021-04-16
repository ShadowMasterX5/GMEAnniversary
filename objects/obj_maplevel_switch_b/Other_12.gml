/// @description Generate switch effects

//Initialize temp variables
var a = 0;

//Repeat 8 times
repeat (8) {

    //Create a effect
    effect = instance_create(x+8,y+2,obj_shard_switch);
    
    //With the effect
    with (effect) {
    
        //Set the sprite and frame
        sprite_index = spr_switchblock;
        image_speed = 0;
        image_index = 3;
        
        //Set gravity
        gravity = 0.1;          
        
        //Set the motion
        motion_set(a,3);
        
    }
    a += 45;  
}

