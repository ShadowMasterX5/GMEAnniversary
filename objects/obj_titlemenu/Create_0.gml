/// @description The titlescreen menu

//Play the title theme
audio_play_sound(bgm_title, 0, true);

//Menu mode
//1: Activating...
//2: Active
//3: Key
mode = 1;
alarm[0] = 30

//Page
page = 0;

//Item
current = 1;

//Save File info
for (i=0; i<3; i++) {

    coins[i] = 0;
    complete[i] = 0;
}

//Menu 0: Main
menu[0,0] = 3;
menu[0,1] = "Start Game"
menu[0,2] = "Options"
menu[0,3] = "Exit"

//Menu 1: File Selection
menu[1,0] = 4;
menu[1,1] = "File A - New!";
menu[1,2] = "File B - New!";
menu[1,3] = "File C - New!";
menu[1,4] = "Back";

//Menu 2: Options
menu[2,0] = 7;
menu[2,1] = "Keyboard Configuration";
menu[2,2] = "Reserve Auto-Drop: On";
menu[2,3] = "Set Window Size";
menu[2,4] = "V-Sync: On";
menu[2,5] = "FPS: On";
menu[2,6] = "View Credits";
menu[2,7] = "Back";

//Menu 3: Keys 1 / 2
menu[3,0] = 7;
menu[3,1] = "Run, Shoot: " + string(key_to_string(global.controlkey));
menu[3,2] = "Jump, Spin: " + string(key_to_string(global.shiftkey));
menu[3,3] = "Reserve   : " + string(key_to_string(global.spacekey));
menu[3,4] = "Pause     : " + string(key_to_string(global.enterkey));
menu[3,5] = "Reset all keys"
menu[3,6] = "Next"
menu[3,7] = "Back"

//Menu 4: Keys 2 / 2
menu[4,0] = 7;
menu[4,1] = "Up        : " + string(key_to_string(global.upkey));
menu[4,2] = "Down      : " + string(key_to_string(global.downkey));
menu[4,3] = "Left      : " + string(key_to_string(global.leftkey));
menu[4,4] = "Right     : " + string(key_to_string(global.rightkey));
menu[4,5] = "Reset all keys"
menu[4,6] = "Previous";
menu[4,7] = "Back";

