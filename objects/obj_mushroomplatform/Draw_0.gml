/// @description Draw the platform

//Draw the platform
draw_sprite(sprite_index,-1,round(x),round(y));

//Draw the platform stem
draw_sprite(sprite_index,4,round(x),round(y)+16);
for (i=0; i<floor(room_height/16)+1; i++;)
    draw_sprite(sprite_index,5,round(x),round(y)+32+(i*16));

