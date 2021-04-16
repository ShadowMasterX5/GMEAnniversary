/// @description Create star effects.

var a = 30;
repeat (6) {

    with (instance_create(x+8,y+8,obj_star)) {
    
        motion_set(a,3);
    }
    a += 60;
}

//Create more stars
alarm[1] = 9;

