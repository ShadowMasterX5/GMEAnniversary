with (other) {
///Draw the HUD

//Disable the fog
if (instance_exists(obj_lightningsheet)) then d3d_set_fog(0, c_black, 0, 64);

//Set font
draw_set_font(global.numbers_w);

//Lives
draw_sprite_ext(spr_hud_mario, -1, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+8, 1, 1, 0, c_white, 1);
draw_text_colour(__view_get( e__VW.XView, 0 )+34, __view_get( e__VW.YView, 0 )+12, string_hash_to_newline(string_format(lives, 2, 0)), c_white, c_white, c_white, c_white, 1);

//Set font
draw_set_font(global.numbers_g);

//Coins
draw_sprite_ext(spr_hud_coin, -1, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+27, 1, 1, 0, c_white, 1);
draw_text_colour(__view_get( e__VW.XView, 0 )+19, __view_get( e__VW.YView, 0 )+31, string_hash_to_newline(string_format(global.coins, 2, 0)), c_white, c_white, c_white, c_white, 1);

//Star coins
if (global.level != -1) {

    draw_sprite_ext(spr_hud_starcoin, -1, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+46, 1, 1, 0, c_white, 1);
    for (var i = 0; i < 3; i++) {
    
        //Draw the coin if it has been collected
        if (ds_map_find_value(global.sc[i],global.level) > 0)
            draw_sprite_ext(spr_hud_starcoin_get, -1, __view_get( e__VW.XView, 0 )+8+(17*i), __view_get( e__VW.YView, 0 )+46, 1, 1, 0, c_white, 1);
    }
}

//Cards
draw_sprite_ext(spr_hud_cards, 0, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-70,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-26, 1, 1, 0, c_white, alpha);
for (var i = 0; i < 3; i++) {

    if (global.card[i] != -1)
        draw_sprite_ext(spr_goalcard, global.card[i], __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-(69-(22*i)), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-25, 1, 1, 0, c_white, alpha);
}

//Reserve Box / Health Meter
if (global.healthmode == 0) {

    //Box
    draw_sprite_ext(spr_hud_reserve, 0, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+12, 1, 1, 0, c_white, 1);
    
    //Reserve item
    if (global.reserve > cs_small)
        draw_sprite_ext(constant_get_sprite(global.reserve), 0, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+12, 1, 1, 0, c_white, 1);
}
else
draw_sprite_ext(spr_hud_health, health, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+23, 1, 1, 0, c_white, 1);

//Set font
draw_set_font(global.numbers_w);

//Time
draw_sprite_ext(spr_hud_time, -1, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-56+shakex, __view_get( e__VW.YView, 0 )+12+shakey, 1, 1, 0, c_white, 1);
if (global.time > -1)
&& (obj_levelcontrol.leveltime != 0) {

    //If there's 100 or less seconds left and the level isn't finished
    if (global.clear == 0) 
    && (global.time <= 100) {
    
        draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-41+shakex, __view_get( e__VW.YView, 0 )+12+shakey, string_hash_to_newline(string_add_zeros(global.time, 3)), c_white, c_white, c_white, c_white, 1);
        draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-41+shakex, __view_get( e__VW.YView, 0 )+12+shakey, string_hash_to_newline(string_add_zeros(global.time, 3)), c_red, c_red, c_red, c_red, fade);
    }
    else
        draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-41, __view_get( e__VW.YView, 0 )+12, string_hash_to_newline(string_add_zeros(global.time, 3)), c_white, c_white, c_white, c_white, 1);
}
else
draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-41, __view_get( e__VW.YView, 0 )+12, string_hash_to_newline("000"), c_white, c_white, c_white, c_white, 1);

//Set font
draw_set_font(global.numbers_b);

//Score
draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-152, __view_get( e__VW.YView, 0 )+12, string_hash_to_newline(string_add_zeros(score, 8)), c_white, c_white, c_white, c_white, 1);

//Set font
draw_set_font(global.numbers_w);

//P-Meter
if (instance_exists(obj_playerparent)) {

    if (obj_playerparent.pmeter > 111)
    || (global.pwing == 1)
        draw_sprite_ext(spr_hud_pmeter, 7+flash, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-18, 1, 1, 0, c_white, 1);
    else
        draw_sprite_ext(spr_hud_pmeter, 0+(obj_playerparent.pmeter/14), __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-18, 1, 1, 0, c_white, 1);
}
else
    draw_sprite_ext(spr_hud_pmeter, 0, __view_get( e__VW.XView, 0 )+8, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-18, 1, 1, 0, c_white, 1);
    
//Enable the fog
if (instance_exists(obj_lightningsheet)) then d3d_set_fog(1, c_black, 0, 64);

}
