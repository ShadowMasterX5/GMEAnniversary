/// @description Create powerup

//If the powerup is a leaf
if (sprite_index == spr_leaf) {

    with (instance_create(x,y,obj_pickup_leaf))
        alarm[1] = 1;
}

//Otherwise, if the powerup is a propeller mushroom
else {
    
    //...and get a powerup
    with (sprite_make_object(x,y,sprite_index)) {
    
        hspeed = 0;
        permission = 1;
    }        
}

//Destroy
instance_destroy();

