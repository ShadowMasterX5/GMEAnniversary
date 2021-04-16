/// @description Draw the item and the bubble

//Draw the item
if (sprout = cs_coin) {

    draw_sprite_ext(spr_coin,0,x-8,y-8,1,1,0,c_white,1)
}
else {

    draw_sprite_ext(constant_get_sprite(sprout),0,x,y-8,1,1,0,c_white,1)
}

draw_sprite_ext(sprite_index,-1,round(x),round(y),image_xscale,image_xscale,0,c_white,1);

