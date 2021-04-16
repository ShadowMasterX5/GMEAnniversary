/// @description Draw Disco ball

if (mylight == noone)
    draw_sprite(sprite_index, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + 40);
else
    draw_sprite(sprite_index, -1, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + 40);

