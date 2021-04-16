/// @description Handle platform position

//Set platform position
new_x = x+lengthdir_x(chainlength*16,direction);
new_y = y+lengthdir_y(chainlength*16,direction)-18;

//Let platform stay
platform.x = new_x;
platform.y = new_y;

//Set speed of platform
platform.hspeed = new_x-old_x;
platform.vspeed = new_y-old_y;

//Set latest speed of the platform
old_x = new_x;
old_y = new_y;

