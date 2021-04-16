/// @description Launch the koopa outside from his shell

//Create shell
with (instance_create(x,y,obj_shell)) {

    sprite_index = spr_shell_big_red;
    koopainside = -1;
    alarm[0] = 540;
    alarm[1] = 600;
}

//Destroy
instance_destroy();

