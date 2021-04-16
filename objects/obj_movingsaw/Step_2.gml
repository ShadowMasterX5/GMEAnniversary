/// @description Make the saw-blade move along with the engine.

if (saw != -1) {

    saw.x = self.x;
    if (sawdir == 0)
        saw.y = self.y-28;
    else if (sawdir == 1) {
    
        saw.y = self.y+14;
        saw.sprite_index = spr_movingsaw_down
    }
}

