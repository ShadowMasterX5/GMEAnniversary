/// @description Lil' Spark

//Inherit event
event_inherited();

//Animate faster
image_speed = 0.3;

//Create spotlight
if (instance_exists(obj_levelcontrol_light)) {

    with (instance_create(x,y,obj_light_st)) {
    
        target = other.id;
        image_blend = c_orange;
    }
}

