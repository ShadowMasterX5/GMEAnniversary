/// @description Check if Mario is hanging on the rope.

//If a rope exists.
if (rope != -1) {

    //If the engine is not moving
    if (!ready) {
    
        if (rope.ison)
            ready = true;
    }
    else {
    
        rope.x = self.x;
        rope.y = self.y+14;
    }
}

