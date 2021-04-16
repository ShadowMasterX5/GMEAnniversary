/// @description Check sprite

//If the offset of the sprites is greater than 16, do not flip
if (sprite_get_yoffset(sprite_index) >= 16)
|| (sprite_index == spr_goombrat)
|| (sprite_index == spr_angrysun)
|| (sprite_index == spr_pokey)
    exit;

//Otherwise, flip
else if (sprite_get_yoffset(sprite_index) < 16) {

    image_yscale = -1;
    if (sprite_get_yoffset(sprite_index) == 0)
        y += 16;
}

