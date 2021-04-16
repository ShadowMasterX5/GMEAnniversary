/// @description Launch the koopa outside from his shell

//Create shell
instance_create(x,y,obj_shell);

//Create green beach koopa
with (instance_create(x,y,obj_beachkoopa)) {

    //Set the sprite
    sprite_index = spr_beachkoopa;
    
    //Set the horizontal speed
    hspeed = 3*sign(obj_playerparent.xscale);
    
    //Do not allow movement
    ready = 0;
}

//Destroy
instance_destroy();
