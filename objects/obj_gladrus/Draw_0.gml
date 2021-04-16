/// @description Draw gladrus

//If the walrus has been squished
if (squishy == 1)
    draw_sprite_ext(spr_gladrus_sq, -1, round(x), round(y)+17, xscale * fxs, fys, 0, c_white, 1);
else
    event_inherited();

