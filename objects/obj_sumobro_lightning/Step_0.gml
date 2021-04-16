/// @description Sumo Bro lightning logic

//Inherit event
event_inherited();

//Blow if no gravity
if (gravity == 0) {

    //If visible, turn invisible and blow
    if (visible) {
    
        //Play 'Flames' sound
        audio_play_sound(snd_flames, 0, false);
        
        //Create 2 adyacent flames
        alarm[0] = 20;
        alarm[1] = 40;
        
        //Turn invisible
        visible = 0;
        
        //Create flame in position
        instance_create(x,y,obj_sumobro_flame);
    }
}

