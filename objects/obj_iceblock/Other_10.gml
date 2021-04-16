/// @description Destroy

//Play 'Kick' sound
audio_play_sound(snd_kick, 0, false);

//Create sparks
repeat(32) {

    with (instance_create(bbox_left+sprite_width/2-4,bbox_top+sprite_height/2-4,obj_smoke)) {
    
        //Sprite
        sprite_index = spr_icespark;
        
        //Animate
        image_speed = 0.1;
        
        //Motion
        motion_set(random(360), random(1));
    }
}

//Destroy
instance_destroy();

