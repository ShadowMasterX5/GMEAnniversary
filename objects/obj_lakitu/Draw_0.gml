/// @description Draw lakitu and cloud

//Increment animation of cloud
cloudanim += 0.15;

//Draw lakitu
draw_sprite_ext(sprite_index, -1, round(x), round(__view_get( e__VW.YView, 0 )+48)+movement.y, xscale, 1, 0, c_white, 1);

//Draw lakitu's cloud
draw_sprite_ext(spr_lakitu_cloud, cloudanim, round(x)-8, round(__view_get( e__VW.YView, 0 )+62)+movement.y, 1, 1, 0, c_white, 1);

