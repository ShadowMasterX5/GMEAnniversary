/// @description The pause menu

//Play a sound and stop some sounds
audio_play_sound(snd_pause,false,0);
audio_stop_sound(snd_pmeter);
audio_stop_sound(snd_skid);

//Make sure the box doesn't animate
image_speed = 0;
image_index = 0;
image_alpha = 0;
image_xscale = 0;
image_yscale = 0;

//Shader variables
uni_time = shader_get_uniform(shd_grayscale,"time");
var_time_var = 0;

uni_resolution = shader_get_uniform(shd_grayscale,"resolution");
var_resolution_x = __view_get( e__VW.WView, 0 );
var_resolution_y = __view_get( e__VW.HView, 0 );

uni_greyscale_fade = shader_get_uniform(shd_grayscale,"fade");
var_greyscale_fade = 0;

//Create a screenshot
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0);

//Stop movement on all backgrounds
for (var i=0; i<8; i++) {

    temp_h[i] = __background_get( e__BG.HSpeed, i );
    temp_v[i] = __background_get( e__BG.VSpeed, i );
    __background_set( e__BG.HSpeed, i, 0 );
    __background_set( e__BG.VSpeed, i, 0 );
}

//Pause particles
with (obj_rainmaker) event_user(0);

//Deactivate all timelines
timeline_running = 0;

//Deactivate the instances.
alarm[1] = 2;

//Font
font = global.font_message;

//Set the choice as the first.
choice = 0;

//Handle certain actions.
ready = 0;
ready2 = 1;

//Begin scaling
alarm[0] = 2;

//Handle the Menus
menu[0] = "Continue";

if (global.levelbeat == 1)
     menu[1] = "Return to map";
else
     menu[1] = "Cannot quit level";
     
menu[2] = "Quit Game";

