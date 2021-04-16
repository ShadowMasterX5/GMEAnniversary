/// @description Shard logic

//Destroy if outside the view
if (outside_view()) {

    instance_destroy();
    exit;
}

//Set gravity
gravity = 0.2;

//Cap horizontal speed
hspeed = 1*sign(hspeed);

