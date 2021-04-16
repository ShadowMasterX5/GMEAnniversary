/// @description Draw title stuff

//Draw cogs if in options menu
if (instance_exists(obj_titlemenu)) {

    //If the menu is the options one, draw a cog.
    if (obj_titlemenu.page >= 2) {

        alpha += 0.0125;
        if (alpha > 0.5)
            alpha = 0.5;
    }
    else {
    
        alpha -= 0.0125;
        if (alpha < 0)
            alpha = 0;
    }
    
    //Draw a cog
    draw_sprite_ext(spr_titlebg_cog, frame, __view_get( e__VW.XView, 0 )+80, __view_get( e__VW.YView, 0 )+80, 1, 1, 180, c_white, alpha);
    draw_sprite_ext(spr_titlebg_cog, frame, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-80, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-80, 1, 1, 0, c_white, alpha);
}

//Draw title middle
draw_sprite_tiled_area_ext(spr_titlebg_middle, 0, 0, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 )+5, __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+190, c_white, 1);

//Draw title top bar
draw_sprite_tiled_area_ext(spr_titlebg_top, 0, 0+barx, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+31, c_white, 1);

//Draw title bottom bar
draw_sprite_tiled_area_ext(spr_titlebg_bottom, 0, 0+barx*-1, 184, __view_get( e__VW.XView, 0 ), __view_get( e__VW.HView, 0 )-32, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), c_white, 1);

//Draw title
draw_sprite_ext(sprite_index, -1, x+4, y+4, 1, 1, 0, c_black, 0.25);
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_white, 1);

