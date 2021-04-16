/// @description Destroy when falling down

if (vspeed > 0)
&& (y > ystart) {

    //Create slow spark effects
    var a = 0;
    repeat (8) {
    
        with (instance_create(x+16,y+16,obj_smoke)) {
        
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
    
        with (instance_create(x+16,y+16,obj_smoke)) {
        
            //Set the sprite
            sprite_index = spr_boltspark;
            
            //Animate
            image_speed = 0.1;
            
            //Motion
            motion_set(b,1);
        }
        b += 45;
    }
    
    //Destroy
    instance_destroy();
}

