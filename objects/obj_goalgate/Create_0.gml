/// @description SMW Goal Gate

//Do not animate
image_speed = 0;
image_index = 0;

//Create tape
instance_create(x,y+144,obj_goalgate_tape);

//Create right part
with (instance_create(x+32,y,obj_goalgate_front))
    sprite_index = other.sprite_index;

