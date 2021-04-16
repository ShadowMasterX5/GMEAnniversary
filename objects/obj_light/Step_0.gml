/// @description Follow the target

//Round position
x = round(x);
y = round(y);

//Make sure to follow the main level controller
if (instance_exists(obj_levelcontrol)) {

    x = obj_levelcontrol.x;
    y = obj_levelcontrol.y;
}

