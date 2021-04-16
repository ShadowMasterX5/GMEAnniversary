/// @description Draw cherry

if (ready == false)
    draw_sprite(sprite_index,-1,round(x),round(y));
else
    draw_sprite_ext(spr_cherry_get,-1,round(x)+8,round(y)+8,scale,scale,angle,c_white,1);

