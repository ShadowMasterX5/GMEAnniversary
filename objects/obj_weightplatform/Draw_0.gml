/// @description Draw the platform

//Draw the platform
draw_sprite(sprite_index,0,round(x),round(y));

//Draw the stem
draw_sprite(sprite_index,1,round(x),round(y)+16);
for (i=0; i<floor(room_height/16)+1; i++;) {

    draw_sprite(sprite_index,2,round(x),round(y)+32+(i*16));
}

