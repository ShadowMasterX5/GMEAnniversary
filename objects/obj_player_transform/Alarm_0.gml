/// @description Freeze all objects and begin animation

//Take a screenshot.
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

//Deactivate all instances.
instance_deactivate_all(true);

//Activate tides
instance_activate_object(obj_tides);
with (obj_tides) visible = 1;

//Activate persistent object
instance_activate_object(obj_persistent);

//Activate player object and disable it's gravity
instance_activate_object(obj_playerparent);
obj_playerparent.enable_gravity = 0;
obj_playerparent.visible = 0;

//Set the animation sequence.
switch (sequence) {

    //Small to Big
    case (0): { 
    
        sprite_index = spr_mario_grow;
        image_speed = 0.25;
    } break;
    
    //Big to Small
    case (1): {
    
        sprite_index = spr_mario_shrink;
        image_speed = 0.25;
    } break;
    
    //Power up
    case (2): {
    
        sprite_index = spr_mario_powerup;
        image_speed = 0.25;
        loop = 3;
    } break;
    
    //Power down
    case (3): {
    
        sprite_index = spr_mario_powerdown;
        image_speed = 0.3;
        loop = 6;
    } break;
    
    //Transform
    case (4): {
    
        sprite_index = spr_mario_transform;
        image_speed = 0.3;
    } break;
}

//Animation has been set.
ready = true;

//Make the object visible.
visible = true;

