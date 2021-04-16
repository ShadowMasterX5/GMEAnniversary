/// @description Displays a message inside a box!

/*
**  This item uses creation code!
**
**  varmsg = Message to display in the message box.
**  mugshot = Mugshot of the character. (Use 'noone' for no mugshot)
*/

//Default Value:
varmsg = "No message was set";
mugshot = noone;

//Font
font = global.font_message;

//Can the text be seen?
showing = false;

//Animate mugshot
anim = 0;

//Animate dialog
anim2 = 0;

//Choice
choice = 1;

//Create a screenshot
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0)

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

//Deactivate everything except this object
instance_deactivate_all(1);

//Activate persistent object
instance_activate_object(obj_persistent);

//Set the alarm to format the text
alarm[0] = 1;

/* */
/*  */
