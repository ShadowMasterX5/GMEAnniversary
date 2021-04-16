/// @description Kill the player

with (other) {

    instance_create(x,y,obj_player_dead);
    instance_destroy();
    exit;
}

