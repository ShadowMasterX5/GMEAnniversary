/// @description Wake up

//Check sprite
switch (sprite_index) {

    //Goombud
    case (spr_goombud_down): {
        
        with (instance_create(x,y,obj_goombud)) {
        
            //Set the horizontal speed
            hspeed = 0.5*sign(other.dir);
            
            //Set the vertical speed
            if (other.gravity == 0)
                vspeed = -3;
        }            
    } break;
    
    //Default sprite
    default: {
        
        with (instance_create(x,y,obj_galoomba)) {
        
            //Set the horizontal speed
            hspeed = 0.5*sign(other.dir);
            
            //Set the vertical speed
            if (other.gravity == 0)
                vspeed = -3;
        }
    } break;
}

//Destroy
instance_destroy();

