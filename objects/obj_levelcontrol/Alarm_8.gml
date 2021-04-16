/// @description Create foreground layers if necessary

for (var i=0; i<8; i++) {

    //If a background has not been set, do not draw
    if (__background_get( e__BG.Index, i ) != -1) {
    
        //If the background is set to the foreground
        if (bgfg[i] == true) {
        
            fg = instance_create(0,0,obj_foreground)
            fg.index = i;
        }
    }
}

