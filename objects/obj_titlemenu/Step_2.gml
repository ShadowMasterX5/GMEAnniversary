/// @description Update save file info

//If 'File A' exists, open it
if (file_exists("GMEAInfoA.ini")) {

    //Check data
    ini_open("GMEAInfoA.ini");
    coins[0] = ini_read_real("Coins", "Data", 0);
    exits[0] = ini_read_real("Exits", "Data", 0);
    completion[0] = ini_read_real("Clear", "Completion", 0);
    ini_close();
    
    //Print it
    menu[1,1] = "File A ..... E: " + string_format(exits[0],3,0) + " - | " + string_add_zeros(coins[0], 3) + "/" + string_add_zeros(global.levelmax*3, 3) + " (" + string_format(completion[0], 3, 0) + "%)";
}

//Otherwise
else {

    menu[1,1] = "File A ..... New!";
}

//If 'File B' exists, open it
if (file_exists("GMEAInfoB.ini")) {

    //Check data
    ini_open("GMEAInfoB.ini");
    coins[1] = ini_read_real("Coins", "Data", 0);
    exits[1] = ini_read_real("Exits", "Data", 0);
    completion[1] = ini_read_real("Clear", "Completion", 0);
    ini_close();
    
    //Print it
    menu[1,2] = "File B ..... E: " + string_format(exits[1],3,0) + " - | " + string_add_zeros(coins[1], 3) + "/" + string_add_zeros(global.levelmax*3, 3) + " (" + string_format(completion[1], 3, 0) + "%)";
}

//Otherwise
else {

    menu[1,2] = "File B ..... New!";
}

//If 'File C' exists, open it
if (file_exists("GMEAInfoC.ini")) {

    //Check data
    ini_open("GMEAInfoC.ini");
    coins[2] = ini_read_real("Coins", "Data", 0);
    exits[2] = ini_read_real("Exits", "Data", 0);
    completion[2] = ini_read_real("Clear", "Completion", 0);
    ini_close();
    
    //Print it
    menu[1,3] = "File C ..... E: " + string_format(exits[2],3,0) + " - | " + string_add_zeros(coins[2], 3) + "/" + string_add_zeros(global.levelmax*3, 3) + " (" + string_format(completion[2], 3, 0) + "%)";
}

//Otherwise
else {

    menu[1,3] = "File C ..... New!";
}

