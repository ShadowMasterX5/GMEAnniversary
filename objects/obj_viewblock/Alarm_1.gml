/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Make an item come out, if there is one        
with (instance_create(x+8,y,obj_powerupsprout)) {
     
    sprite_index = constant_get_sprite(other.sprout[other.numb]);
}
    
//Change into a empty block
with (instance_create(x,y,obj_emptyblock)) sprite_index = spr_viewblock;

//Destroy
instance_destroy();

