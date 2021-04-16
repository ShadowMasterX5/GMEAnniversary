/// @description Draw powerup and inventory

//Draw the item
if (image_alpha > 0) {

    if (sprite_index != spr_3upmoon)
        draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,alpha);
    else
        draw_sprite_ext(sprite_index,-1,x-8,y,1,1,0,c_white,alpha);
}

//Draw the inventory if showing
if (inv_y > 0) {

    //Draw inventory box
    draw_sprite_ext(spr_mapinventory, 0, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-inv_y, 1, 1, 0, c_white, 1);

    //Draw the items
    for (var i = 1; i <= global.inventory[0]; i++) 
        draw_sprite_ext(constant_get_sprite(global.inventory[i]), 0, __view_get( e__VW.XView, 0 )+83+(i-1)*20, __view_get( e__VW.YView, 0 )+(224-inv_y), 1, 1, 0, c_white, 1);
}

