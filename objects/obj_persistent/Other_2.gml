/// @description Load Keys + Fullscreen + Window size + VSync Settings

//If the 'settings.dat' file exist.
if (file_exists("settings.dat")) {

    //Open the file
    var file = file_text_open_read("settings.dat");

    //Set fullscreen mode based on the read value
    fullscreen = real(file_text_read_string(file));
    file_text_readln(file);

    //Set filtering mode based on the read value
    filter = real(file_text_read_string(file));
    file_text_readln(file);

    //Set vsync based on the read value
    vsync = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set reserve auto-drop based on the read value
    global.reservedrop = real(file_text_read_string(file))
    file_text_readln(file);
    
    //Set key assigned to 'Control'
    global.controlkey = real(file_text_read_string(file));
    file_text_readln(file);

    //Set key assigned to 'Shift'
    global.shiftkey = real(file_text_read_string(file));
    file_text_readln(file);

    //Set key assigned to 'Space'
    global.spacekey = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set key assigned to 'Enter'
    global.enterkey = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set key assigned to 'Up'
    global.upkey = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set key assigned to 'Down'
    global.downkey = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set key assigned to 'Left'
    global.leftkey = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set key assigned to 'Right'
    global.rightkey = real(file_text_read_string(file));

    //Close the file
    file_text_close(file);
}
else {

    //Fullscreen is off by default
    fullscreen = 0;

    //Set the window to double of it's original size
    filter = 2;

    //VSync is off by default
    vsync = 0;
    
    //Control key
    global.controlkey = vk_control;
    
    //Shift key
    global.shiftkey = vk_shift;
    
    //Space key
    global.spacekey = vk_space;
    
    //Enter key
    global.enterkey = vk_enter;
    
    //Up key
    global.upkey = vk_up;
    
    //Down key
    global.downkey = vk_down;
    
    //Left key
    global.leftkey = vk_left;
    
    //Right key
    global.rightkey = vk_right;
}

//Apply loaded settings
alarm[1] = 1;

