/// @description Press the switch

//Play 'Course Clear' music
audio_play_sound(bgm_smwclear, 0, false);

//Display message
instance_create(0,0,obj_palacemsg);

//Clear the level
global.clear = 1;

//The switch is pressed
ready = 1;

//Check the sprite of the switch
switch (sprite_index) {

    //Yellow
    case (spr_palaceswitch_y): global.palaceyellow = true; break;
    
    //Green
    case (spr_palaceswitch_g): global.palacegreen = true; break;
    
    //Red
    case (spr_palaceswitch_r): global.palacered = true; break;
    
    //Blue
    case (spr_palaceswitch_b): global.palaceblue = true; break;
}

