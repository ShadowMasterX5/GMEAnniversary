/// @description Foo logic

//Inherit event
event_inherited();

//If blowing
if (sprite_index == spr_foo_blow)
&& (image_index == 1) {
    
    //Create fog
    with (instance_create(x,y,obj_foo_fog)) {
    
        //If facing right
        if (other.xscale == 1)
            motion_set(random_range(-30, 30), random_range(1,1.5));
            
        //Otherwise, if facing left
        else if (other.xscale == -1)
            motion_set(random_range(150,210), random_range(1,1.5));
    }
}

//Otherwise, make sure it faces the player
else {

    //If the player does not exist or it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

//If the blow time is smaller than 200
if (blowtime <= 200) {

    //Set the blowing sprite
    sprite_index = spr_foo_blow;
    
    //Do not animate
    image_speed = 0;
    image_index = 1;
}

//Otherwise, if the blow time is greater than 201
else if (blowtime > 200) {

    //If the blow time is smaller than 300
    if (blowtime <= 300) {
    
        //Set the blowing sprite
        sprite_index = spr_foo_blow;
        
        //Do not animate
        image_speed = 0;
        image_index = 0;
    }
    
    //Otherwise, animate normally
    else {
    
        //Set the normal sprite
        sprite_index = spr_foo;
        
        //Animate
        image_speed = 0.125;
    }
}

//Decrement blowtime
blowtime--;
if (blowtime < 0)
    blowtime = 800;

