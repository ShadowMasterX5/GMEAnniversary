/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Change into a empty block
if (coiny == 2) {

    //Get a mushroom if this block got hit enough times
    if (get > 9) {

        with (instance_create(x+8,y,obj_powerupsprout))
            sprite_index = spr_mushroom;    
    }

    //Turn into a empty block
    instance_change(obj_emptyblock, false);
}
else
    ready = 0;

