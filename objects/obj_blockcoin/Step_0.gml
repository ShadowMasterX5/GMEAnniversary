/// @description When the coin falls back down, get points and destroy.

if ((y > ystart) && (vspeed > 0)) {

    //Get 10 points
    with (instance_create(x,ystart,obj_score)) event_user(0);
    
    //Create sparkle effect
    switch (sprite_index) {
    
        //Coin
        case (spr_coin): {
        
            with (instance_create(x,ystart,obj_smoke)) 
                sprite_index = spr_sparkle;
        } break;
        
        //P-Coin
        case (spr_pcoin): {
        
            with (instance_create(x,ystart,obj_smoke)) 
                sprite_index = spr_sparkle_b;                
        } break;
    }
    
    //Destroy
    instance_destroy();
}

