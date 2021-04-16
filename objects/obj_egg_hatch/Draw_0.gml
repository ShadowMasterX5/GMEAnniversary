/// @description Draw hatching egg

//If the animation has been set.
if (ready) {

    if (background_exists(back)) {
    
        //Disable alpha blending.
        draw_enable_alphablend(0);
        
        //Draw the screenshot
        draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
        
        //Enable alpha blending.
        draw_enable_alphablend(1);
    }
}

//Set the shader
pal_swap_set(spr_palette_yoshi,colour);

//Draw Yoshi
draw_sprite_ext(sprite_index,-1,round(x),y+1,1,1,0,c_white,1);

//Reset the shader
pal_swap_reset();

