/// @description Stop the shell

//Create shell
with (instance_create(x,y,obj_shell)) {

    sprite_index = other.sprite_index;
    if (other.koopainside != 0) {
    
        koopainside = other.koopainside;
        alarm[0] = 540;
        alarm[1] = 600;
    }
}

//Destroy
instance_destroy();

