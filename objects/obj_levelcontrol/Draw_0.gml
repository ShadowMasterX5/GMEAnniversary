/// @description Deals with parallax backgrounds.

for (var i=0; i<8; i++) {

    //If the background is not set, do not draw
    if (__background_get( e__BG.Index, i ) != -1) {
    
        //If the background is not a foreground, do not draw
        if (__background_get( e__BG.Foreground, i ) == false) {
        
            //If the background is higher than the height of the room
            if (__background_get( e__BG.Height, i ) < room_height)
            && (__background_get( e__BG.Height, i ) > __view_get( e__VW.HView, 0 ))
                draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, i ), __view_get( e__VW.XView, 0 )/(1.2+(0.2*i))+(__background_get( e__BG.X, i )+__background_get( e__BG.HSpeed, i )), __background_get( e__BG.Y, i )+(__view_get( e__VW.YView, 0 )*(room_height-__background_get( e__BG.Height, i ))/(room_height-__view_get( e__VW.HView, 0 ))), 1, 1, 0, __background_get( e__BG.Blend, i ), __background_get( e__BG.Alpha, i ));
                
            //Otherwise, draw normally        
            else        
                draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, i ), __view_get( e__VW.XView, 0 )/(1.2+(0.2*i))+(__background_get( e__BG.X, i )+__background_get( e__BG.HSpeed, i )), __background_get( e__BG.Y, i ), 1, 1, 0, __background_get( e__BG.Blend, i ), __background_get( e__BG.Alpha, i ));
        }
    }
}

//Draw pit marker
draw_background_ext(bgr_pit, 0, room_height-32, room_width/16, 1, 0, __background_get( e__BG.Blend, 0 ), 0.5);

