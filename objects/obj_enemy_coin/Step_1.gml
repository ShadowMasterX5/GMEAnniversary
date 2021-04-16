/// @description Update animation speed

//Animate
image_speed = 0.065+abs(hspeed)/7.5;

//Destroy if the gray p-switch is not active
if (obj_levelcontrol.gswitchon == false) {

    instance_create(x,y,obj_smoke);
    instance_destroy();
    exit;
}

