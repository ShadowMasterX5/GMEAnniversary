/// @description Make buzzy beetle shells edible and not vulnerable to fire

//Inherit event
event_inherited();

//Read top comment
if (sprite_index == spr_shell_buzzy)
|| (sprite_index == spr_shell_buzzy_down) {

    //Make it invulnerable to fire
    vulnerable = 1;
    
    //Make it edible but not give a item
    edible = 0;
}

