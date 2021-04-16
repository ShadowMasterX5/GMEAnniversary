/// @description Draw Fire Chomp and followers

for (i=1; i<followers; i++;) {

    draw_sprite_ext(spr_fireball,anim,oldx[i*closeness],oldy[i*closeness]+4,1,1,0,c_white,1);
}

//Draw Fire Chomp
draw_sprite_ext(sprite_index, -1, round(x), round(y), xscale, 1, 0, c_white, 1);

