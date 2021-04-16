/// @description Draw the player

//If the animation has been set.
if (background_exists(back)) {

    //Disable alpha blending.
    draw_enable_alphablend(0);
    
    //Draw the screenshot
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    draw_enable_alphablend(1);
}

//If the player is inside a kuribo shoe, draw him inside a kuribo shoe
if (global.mount == 2) {
        
    //Draw the player
    draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);
    
    //Draw the shoe on front
    switch (global.mountcolour) {
    
        //Kuribo Shoe
        case (0): draw_sprite_ext(spr_kuriboshoe,0,round(x),round(y)+1,image_xscale,1,0,c_white,1); break;
        
        //Baburu Shoe
        case (1): draw_sprite_ext(spr_baburushoe,0,round(x),round(y)+1,image_xscale,1,0,c_white,1); break;
        
        //Kuribo Shoe
        case (2): draw_sprite_ext(spr_dossunshoe,0,round(x),round(y)+1,image_xscale,1,0,c_white,1); break;
        
        //Jugemu Shoe
        case (3): draw_sprite_ext(spr_jugemushoe,0,round(x),round(y)+1,image_xscale,1,0,c_white,1); break;
    }
}

//Otherwise if the player is riding a yoshi, draw him mounted on yoshi.
else if (global.mount == 1) {

    //Set the palette
    pal_swap_set(spr_palette_yoshi, yoshicolour);
    
    //Draw Yoshi
    draw_sprite_ext(yoshisprite,0,round(x),round(y)+1,image_xscale,1,0,c_white,1);
    
    //Reset the shader
    pal_swap_reset();
    
    //Draw the player
    if (sequence == 3) {
    
        if (image_xscale == 1)
            draw_sprite_ext(sprite_index,-1,round(x)-4,round(y)-9,1,1,0,c_white,1);
        else if (image_xscale == -1)
            draw_sprite_ext(sprite_index,-1,round(x)+4,round(y)-9,1,1,0,c_white,1);
    }
    else {
    
        if (image_xscale == 1)
            draw_sprite_ext(sprite_index,-1,round(x)-4,round(y)-9,1,1,0,c_white,1);
        else if (image_xscale == -1)
            draw_sprite_ext(sprite_index,-1,round(x)+4,round(y)-9,-1,1,0,c_white,1);
    }    
}

//Otherwise, draw normally
else
    draw_sprite_ext(sprite_index,-1,round(x),round(y)+1,image_xscale,1,0,c_white,image_alpha);

