/// @description Draw bubble

//Draw enemy
draw_sprite_ext(sprout,-1,round(x)+8+(sprite_get_xoffset(sprout)),y+26,1,-1,0,c_white,1);

//Draw bubble
draw_sprite_ext(sprite_index,-1,round(x),y,1,1,0,c_white,image_alpha);

