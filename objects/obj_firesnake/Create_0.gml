/// @description Fire Snake

//How vulnerable is this enemy to various items?
vulnerable = 2;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Animate
image_speed = 0.25;

//Start moving
alarm[0] = 60;

//Jump
jumping = 0;

//Jump downwards
ready = 0;

//Check previous hspeed
prevhspeed = 0;

//Create body parts
for (var i=0; i<4; i++) {

    //Create body part
    var b = instance_create(xstart,ystart,obj_firesnake_body);
    
    //Assign the body to a id
    mybody[i] = b;
        b.parent = id;
        b.depth = -1+i
}

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        sprite_index = spr_surface_light_small_b;
        image_blend = c_orange;
    }
}

