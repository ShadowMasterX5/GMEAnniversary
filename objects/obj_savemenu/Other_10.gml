/// @description Save the game

//Save in the given file
save(global.file);

//If 'File A' exists, open Info A
if (global.file = "GMEASaveA.sav") {

    ini_open("GMEAInfoA.ini");
    ini_write_real("Coins", "Data", global.starcoins);
    ini_write_real("Exits", "Data", (ds_map_size(global.exits) + ds_map_size(global.exits2)));
    ini_write_real("Clear", "Completion", global.gameclear);
    ini_close();
}

//Otherwise, open file B
else if (global.file == "GMEASaveB.sav") {

    ini_open("GMEAInfoB.ini");
    ini_write_real("Coins", "Data", global.starcoins);
    ini_write_real("Exits", "Data", (ds_map_size(global.exits) + ds_map_size(global.exits2)));
    ini_write_real("Clear", "Completion", global.gameclear);
    ini_close();
}

//Otherwise, open file C
else if (global.file == "GMEASaveC.sav") {

    ini_open("GMEAInfoC.ini");
    ini_write_real("Coins", "Data", global.starcoins);
    ini_write_real("Exits", "Data", (ds_map_size(global.exits) + ds_map_size(global.exits2)));
    ini_write_real("Clear", "Completion", global.gameclear);
    ini_close();
}

