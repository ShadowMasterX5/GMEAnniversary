/// @description Save Keys + Fullscreen + Window size + VSync Settings

keyboard_key_release(vk_control)
keyboard_key_release(global.controlkey)

//Open the file
var file = file_text_open_write("settings.dat");

//Save fullscreen settings
file_text_write_string(file,string(fullscreen));
file_text_writeln(file);

//Save filtering settings
file_text_write_string(file,string(filter));
file_text_writeln(file);

//Save vsync settings
file_text_write_string(file,string(vsync));
file_text_writeln(file);

//Save reserve item setting
file_text_write_string(file,string(global.reservedrop))
file_text_writeln(file);

//Save control key
file_text_write_string(file,string(real(global.controlkey)));
file_text_writeln(file);

//Save shift key
file_text_write_string(file,string(real(global.shiftkey)));
file_text_writeln(file);

//Save space key
file_text_write_string(file,string(real(global.spacekey)));
file_text_writeln(file);

//Save enter key
file_text_write_string(file,string(real(global.enterkey)));
file_text_writeln(file);

//Save up key
file_text_write_string(file,string(real(global.upkey)));
file_text_writeln(file);

//Save down key
file_text_write_string(file,string(real(global.downkey)));
file_text_writeln(file);

//Save left key
file_text_write_string(file,string(real(global.leftkey)));
file_text_writeln(file);

//Save right key
file_text_write_string(file,string(real(global.rightkey)));

//Close the file
file_text_close(file);

