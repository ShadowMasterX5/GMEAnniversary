/// @description Make buzzy beetle shells not vulnerable to fire

//Hereby silver switch event
event_inherited();

//Make buzzy shells invulnerable to fire
if (sprite_index == spr_shell_buzzy)
|| (sprite_index == spr_shell_buzzy_down)
    vulnerable = 1;

