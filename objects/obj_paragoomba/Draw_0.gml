/// @description Draw Paragoomba

//Draw wings
draw_sprite_ext(spr_goomba_wings, anim, round(x), round(y)+1, 1, 1, 0, c_white, 1);

//Draw goomba
draw_sprite_ext(sprite_index, -1, round(x), round(y)+1, 1, 1, 0, c_white, 1);

