/// @description Leave trail

alarm[0] = 1;
if (speed > 0.5) {

    trail = instance_create(x,y,obj_firework_trail);
    with (trail) {
    
        //Set motion
        motion_set(random(other.direction*-1-random_range(22.5,-22.5)),other.speed/2);
        
        //Set sprite
        sprite_index = other.sprite_index;
    }
}

