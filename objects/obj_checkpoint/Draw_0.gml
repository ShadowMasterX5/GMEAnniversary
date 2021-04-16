/// @description Draw checkpoint and flag

//Keep waving
angle += wavespeed;

//Draw entire checkpoint
draw_sprite(sprite_index,-1,x,y);
for (i=0; i<=27/part; i+=1)
    draw_sprite_part(flagsprite,-1,i*part,0,part,18,round(x)+8+(i*part),round(y)+8+(sin(angle+i)));

