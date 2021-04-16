/// @description Draw pipe

draw_sprite_ext(sprite_index, -1, round(x), round(y)+1, dir, 1, 0, c_white, 1);

//Draw the plant
if (myplant.x != -1000)
&& (myplant.y != -1000)
    draw_sprite_ext(spr_pipeypipe_plant, anim, round(x), round(y)+1, myplant.image_xscale, 1, 0, c_white, 1);

