/// @description Finish block bump

//Stop vertical movement
vspeed = 0;
y = ystart;

//Change into a empty block
if (coiny == 2) {

    //Create 5 coins if this block got hit enough times
    if (get > 9) {

        audio_play_sound(snd_scatter, 0, false);
        repeat (5) {
        
            with (instance_create(x+8,ystart-24,obj_blockcoin2)) {
            
                hspeed = random_range(1,-1);
                vspeed = random_range(-1,-4);
            }        
        }
    }

    instance_change(obj_emptyblock, false);
}
else
    ready = 0;

