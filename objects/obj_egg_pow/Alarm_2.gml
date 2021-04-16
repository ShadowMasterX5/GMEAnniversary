/// @description Create a powerup from outside the egg

//Check the current sprite
switch (sprite_index) {

    //Green Yoshi Egg
    case (spr_egg): {
    
        //Create a mushroom out of the yoshi egg
        with (instance_create(x+8,y,obj_mushroom)) {
        
            permission = 1;
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))
                vspeed = -2;
            else
                vspeed = -4;
        }
    } break;
    
    //Red Yoshi Egg
    case (spr_egg_r): {
    
        //Create a fireflower out of the yoshi egg
        with (instance_create(x+8,y,obj_fireflower)) {
                           
            permission = 1;
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))
                vspeed = -2;
            else
                vspeed = -4;
        }
    } break;
    
    //Yellow Yoshi Egg
    case (spr_egg_y): {
    
        //Create a starman out of the yoshi egg
        with (instance_create(x+8,y,obj_starman)) {
        
            permission = 1;
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))
                vspeed = -2;
            else
                vspeed = -4;
        }
    } break;
    
    //Blue Yoshi Egg
    case (spr_egg_b): instance_create(x+8,y,obj_pickup_leaf); break;
    
    //Teal Yoshi Egg
    case (spr_egg_t): {
    
        //Create a iceflower out of the yoshi egg
        with (instance_create(x+8,y,obj_iceflower)) {
                           
            permission = 1;
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))
                vspeed = -2;
            else
                vspeed = -4;
        }            
    } break;
    
    //Pink Yoshi Egg
    case (spr_egg_p): {
    
        //Create a carrot out of the yoshi egg
        with (instance_create(x+8,y,obj_carrot)) {
                           
            permission = 1;
            if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0))
                vspeed = -2;
            else
                vspeed = -4;
        }                        
    } break;
}

//Destroy
instance_destroy();

