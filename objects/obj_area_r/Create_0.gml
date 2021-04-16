/// @description Red Switch Block

//Turn solid if active
if (global.palacered) {

    //Create a block
    with (instance_create(x,y,obj_qblock)) {
    
        //Set the same sprite
        sprite_index = other.sprite_index;
        
        //Do not animate
        image_speed = 0;
        image_index = 0;
        
        //Set the item to sprout
        sprout = cs_area_r;
    }
    
    //Destroy
    instance_destroy();
}

//Animate
image_speed = 0;
image_index = 1;

