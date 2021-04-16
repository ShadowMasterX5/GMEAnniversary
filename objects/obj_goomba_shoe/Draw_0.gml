/// @description Draw Kuribo Shoe Goomba

//Draw Shoe
draw_sprite_ext(spr_kuriboshoe, anim, round(x), round(y)+1, xscale, 1, 0, c_white, 1);

//Draw Goomba
if (ready)
    draw_sprite_ext(sprite_index, -1, round(x), round(y)-15, xscale, 1, 0, c_white, 1);

