/// @description Draw boomerang

if (xscale == 1)
    draw_sprite(sprite_index,-1,round(x),round(y));
else
    draw_sprite_ext(sprite_index,-1,round(x)+16,round(y),-1,1,0,c_white,1);

