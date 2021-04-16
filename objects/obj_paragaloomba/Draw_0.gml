/// @description Draw Para Goomba

//Draw back wing
draw_sprite_ext(spr_galoomba_wing_back, anim, round(x), y+1+round(image_index), xscale, 1, 0, c_white, 1);

//Draw galoomba
draw_sprite_ext(spr_galoomba, -1, round(x), y+1, xscale, 1, 0, c_white, 1);

//Draw front wing
draw_sprite_ext(spr_galoomba_wing_front, anim, round(x), y+1+round(image_index), xscale, 1, 0, c_white, 1);

