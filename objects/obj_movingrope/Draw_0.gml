/// @description Draw

//Draw engine
draw_sprite(sprite_index,-1,x,y);

//Draw rope
a = ropelength
b = 16

//If there's still rope to add.
while (a > 0) {

    if (a = 1) {
    
        draw_sprite(spr_movingrope,1,x,y+b-2)
        a--;
        b += 16;
    }
    else {
    
        draw_sprite(spr_movingrope,0,x,y+b-2)
        a--;
        b += 16;
    }
}

