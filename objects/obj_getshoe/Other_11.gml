/// @description Make the player enter the shoe

if (obj_playerparent.holding == 0)
&& (obj_playerparent.visible == 1) {

    //Snap into position
    obj_playerparent.x = x;
    obj_playerparent.y = y-2;
    
    //Force him to hold it
    obj_playerparent.holding = 4;
    
    //Remember the correct shoe
    switch (sprite_index) {
     
        //Kuribo Shoe
        case (spr_kuriboshoe): global.mountcolour = 0; break;
        
        //Baburu Shoe
        case (spr_baburushoe): global.mountcolour = 1; break;
        
        //Dossun Shoe
        case (spr_dossunshoe): global.mountcolour = 2; break;
        
        //Jugemu Shoe
        case (spr_jugemushoe): global.mountcolour = 3; break;
        
        //Pentaro Shoe
        case (spr_pentaroshoe): global.mountcolour = 4; break;
    }    
    
    //Play 'Transform' sound
    audio_play_sound(snd_stomp, 0, false);
    
    //Create shoe
    instance_create(x,y,obj_kuriboshoe);
    
    //Destroy
    instance_destroy();
}

