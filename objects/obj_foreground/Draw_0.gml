/// @description Draw foregrounds
        
//If the background is higher than the height of the room
if (__background_get( e__BG.Height, index ) < room_height)
&& (__background_get( e__BG.Height, index ) > __view_get( e__VW.HView, 0 ))
    draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, index ), __view_get( e__VW.XView, 0 )/(1.2+(0.2*index))+(__background_get( e__BG.X, index )+__background_get( e__BG.HSpeed, index )), __background_get( e__BG.Y, index )+(__view_get( e__VW.YView, 0 )*(room_height-__background_get( e__BG.Height, index ))/(room_height-__view_get( e__VW.HView, 0 ))), 1, 1, 0, __background_get( e__BG.Blend, index ), __background_get( e__BG.Alpha, index ));
    
//Otherwise, draw normally        
else        
    draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, index ), __view_get( e__VW.XView, 0 )/(1.2+(0.2*index))+(__background_get( e__BG.X, index )+__background_get( e__BG.HSpeed, index )), __background_get( e__BG.Y, index ), 1, 1, 0, __background_get( e__BG.Blend, index ), __background_get( e__BG.Alpha, index ));

