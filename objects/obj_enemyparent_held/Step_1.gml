/// @description Turn into a silver coin if the silver switch is active

if (obj_levelcontrol.gswitchon == true) {

    instance_create(x,y,obj_enemy_coin);
    instance_destroy();
    exit;
}

