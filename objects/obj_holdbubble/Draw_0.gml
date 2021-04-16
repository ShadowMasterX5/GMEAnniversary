/// @description Draw bubble

//Draw item
if (sprout == cs_jugemushoe)
    draw_sprite_ext(constant_get_sprite(sprout),0,round(x)+(sprite_get_xoffset(constant_get_sprite(sprout))),y+10,1,1,0,c_white,1);
else {

    if (sprout == cs_coin)
        draw_sprite(spr_coin,-1,x+8,y+10);    
    else
        draw_sprite_ext(constant_get_sprite(sprout),0,round(x)+8+(sprite_get_xoffset(constant_get_sprite(sprout))),y+10,1,1,0,c_white,1);
}

//Draw bubble
draw_sprite_ext(sprite_index,-1,round(x),y,1,1,0,c_white,image_alpha);

