/// @description Draw flag

angle += wavespeed;
for (i=0; i<=27/part; i+=1) {

    draw_sprite_part(sprite_index,-1,i*part,0,part,27,round(x)+(i*part),round(y)-11+(sin(angle+i)));
}

