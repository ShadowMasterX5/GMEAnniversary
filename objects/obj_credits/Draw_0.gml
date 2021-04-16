/// @description Draw background

//Draw title middle
draw_sprite_tiled_area_ext(spr_titlebg_middle, 0, 0, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 )+5, __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+190, c_white, 1);

//Draw title top bar
draw_sprite_tiled_area_ext(spr_titlebg_top, 0, 0+barx, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+31, c_white, 1);

//Draw title bottom bar
draw_sprite_tiled_area_ext(spr_titlebg_bottom, 0, 0+barx*-1, 184, __view_get( e__VW.XView, 0 ), __view_get( e__VW.HView, 0 )-32, __view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ), c_white, 1);

//Display 'The End'
if (ready > 0) {

    draw_sprite_ext(spr_theend, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2, 1, 1, 0, c_white, alpha);
    if (ready2 == 1) {
    
        //Set font
        draw_set_font(global.font_interface);
        
        //Draw the text
        draw_text(__view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 16, string_hash_to_newline(string("PRESS ANY KEY!")));
    }
}

