/// @description Snow Generator

//Initialize particle system
snow_sys = part_system_create();

//Pause / Resume particles
ind = 1;

//Set the depth
part_system_depth(snow_sys,-8);

//Set particle type
snow = part_type_create();

//Set particle shape
part_type_shape(snow, ef_flare);

//Set particle size
part_type_size(snow, 0.05, 0.15, 0, 0);

//Set particle life
part_type_life(snow, 600, 600);

//Set particle alpha
part_type_alpha1(snow, 1);

//Set particle motion
part_type_speed(snow, 2, 4, 0, 0);
part_type_direction(snow, 240, 260, 0.05, 0.1);

//Set particle colour
part_type_colour1(snow, c_white);

//Create emitter
emitter = part_emitter_create(snow_sys);

//Set emitter stream
part_emitter_stream(snow_sys,emitter,snow, 5);

//Set emitter region
part_emitter_region(snow_sys,emitter, __view_get( e__VW.XView, 0 )-600, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+600, __view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ), ps_shape_line, ps_distr_linear);

//Generate particles
repeat (5)
    part_system_update(snow_sys);

