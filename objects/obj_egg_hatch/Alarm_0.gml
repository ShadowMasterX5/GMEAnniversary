/// @description Set up animation sequence and take up a screenshot.

//Take a screenshot.
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0);

//Pause particles
with (obj_rainmaker) event_user(0);

//Deactivate all timelines
timeline_running = 0;

//Deactivate all instances.
instance_deactivate_all(true);

//Activate tides
instance_activate_object(obj_tides);
with (obj_tides) visible = 1;

//Activate persistent object.
instance_activate_object(obj_persistent);

//Animate
image_speed = 0.15;

//Animation has been set.
ready = true;

//Make the object visible.
visible = true;

