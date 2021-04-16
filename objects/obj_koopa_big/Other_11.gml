/// @description Topple the koopa inside it's shell

//Create shell
with (instance_create(x,y,obj_shell)) {

    sprite_index = spr_shell_big;
    koopainside = -1;
    alarm[0] = 540;
    alarm[1] = 600;
}

//Destroy
instance_destroy();

