/// @description Draw magic

//Draw spell
for (var i=0; i<3; i++) {

    draw_sprite_ext(spr_magic, i, x+6*cos((angle+(i*360/3))*pi/180), y+6*sin((angle+(i*360/3))*pi/180), 1, 1, 0, c_white, 1);
}

//Update angle
angle += 10*sign(hspeed);
if (angle > 360)
    angle -= 360;

