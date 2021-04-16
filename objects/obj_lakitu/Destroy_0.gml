/// @description Destroy movement object and generate a new lakitu

//Generate a new lakitu
with (instance_create(0,0,obj_enemy_tick)) {

    sprite_index = spr_lakitu;
    xmin = other.xmin;
    xmax = other.xmax;
}

//Destroy movement
with (movement) instance_destroy();

