/// @description Draw the block

//Draw the item inside
if (sprout[numb] == cs_bomb)
|| (sprout[numb] == cs_propeller)
    draw_sprite_part(constant_get_sprite(sprout[numb]),0,0,5,16,21,round(x),round(y));
else {

    if (sprout[numb] == cs_leaf)
        draw_sprite(constant_get_sprite(sprout[numb]),1,round(x)+8,round(y));
    else
        draw_sprite(constant_get_sprite(sprout[numb]),0,round(x)+8,round(y));
}

//Draw the block
draw_sprite(sprite_index,-1,round(x),round(y));

