/// @description Draw chains

for (var i=1; i<=chainlength; i++;) {

    dx = x+lengthdir_x(i*16,direction)
    dy = y+lengthdir_y(i*16,direction)
    draw_sprite(spr_balanceplatform_segment,0,dx,dy)
}

//Handle platform variables
event_user(0);

