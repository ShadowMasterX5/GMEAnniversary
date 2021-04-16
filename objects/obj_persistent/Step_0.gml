/// @description Handle gamepad key actions

//If the gamepad variable exists
if (variable_global_exists("gamepad")) {

    //If there's a gamepad active
    if (global.gamepad) {
    
        //Left Stick - Up
        if (leftstick[0] = 0)
        && (gamepad_axis_value(gamepad_input, gp_axislv) <= -0.5) {
        
            leftstick[0] = 1;
            keyboard_key_press(global.upkey);
        }
        else if (leftstick[0] == 1)
        && (gamepad_axis_value(gamepad_input, gp_axislv) > -0.5) {
        
            leftstick[0] = 0;
            keyboard_key_release(global.upkey);
        }
        
        //Left Stick - Down
        if (leftstick[1] = 0)
        && (gamepad_axis_value(gamepad_input, gp_axislv) >= 0.5) {
        
            leftstick[1] = 1;
            keyboard_key_press(global.downkey);
        }
        else if (leftstick[1] == 1)
        && (gamepad_axis_value(gamepad_input, gp_axislv) < 0.5) {
        
            leftstick[1] = 0;
            keyboard_key_release(global.downkey);
        }
        
        //Left Stick - Left
        if (leftstick[2] = 0)
        && (gamepad_axis_value(gamepad_input, gp_axislh) <= -0.5) {
        
            leftstick[2] = 1;
            keyboard_key_press(global.leftkey);
        }
        else if (leftstick[2] == 1)
        && (gamepad_axis_value(gamepad_input, gp_axislh) > -0.5) {
        
            leftstick[2] = 0;
            keyboard_key_release(global.leftkey);
        }
        
        //Left Stick - Right
        if (leftstick[3] = 0)
        && (gamepad_axis_value(gamepad_input, gp_axislh) >= 0.5) {
        
            leftstick[3] = 1;
            keyboard_key_press(global.rightkey);
        }
        else if (leftstick[3] == 1)
        && (gamepad_axis_value(gamepad_input, gp_axislh) < 0.5) {
        
            leftstick[3] = 0;
            keyboard_key_release(global.rightkey);
        }
        
        //Up on d-pad
        if (gamepad_button_check_pressed(gamepad_input, gp_padu))
            keyboard_key_press(global.upkey);
        else if (gamepad_button_check_released(gamepad_input, gp_padu))
            keyboard_key_release(global.upkey);
    
        //Down on d-pad
        if (gamepad_button_check_pressed(gamepad_input, gp_padd))
            keyboard_key_press(global.downkey);
        else if (gamepad_button_check_released(gamepad_input, gp_padd))
            keyboard_key_release(global.downkey);
    
        //Left on d-pad
        if (gamepad_button_check_pressed(gamepad_input, gp_padl))
            keyboard_key_press(global.leftkey);
        else if (gamepad_button_check_released(gamepad_input, gp_padl))
            keyboard_key_release(global.leftkey);
    
        //Right on d-pad
        if (gamepad_button_check_pressed(gamepad_input, gp_padr))
            keyboard_key_press(global.rightkey);
        else if (gamepad_button_check_released(gamepad_input, gp_padr))
            keyboard_key_release(global.rightkey);
            
        //A Button / B Button
        //X Button / O Button (Shift)
        if ((gamepad_button_check(gamepad_input, gp_face1)) || (gamepad_button_check(gamepad_input, gp_face2)))
            keyboard_key_press(global.shiftkey);
        else 
            keyboard_key_release(global.shiftkey);
        
        //X Button / Y Button 
        //Square Button / Triangle Button (Control)
        if ((gamepad_button_check(gamepad_input, gp_face3)) || (gamepad_button_check(gamepad_input, gp_face4)))
            keyboard_key_press(global.controlkey);
        else
            keyboard_key_release(global.controlkey);
        
        //Start Key
        if (gamepad_button_check(gamepad_input, gp_start))
            keyboard_key_press(global.enterkey);
        else
            keyboard_key_release(global.enterkey);
        
        //Select Key
        if (gamepad_button_check(gamepad_input, gp_select)) 
            keyboard_key_press(global.spacekey);
        else 
            keyboard_key_release(global.spacekey);     
    }
}

///Handle various in-game variables

//Calculate percentage
got = (ds_map_size(global.exits) + ds_map_size(global.exits2)) + global.starcoins + (global.palaceyellow + global.palacegreen + global.palacered + global.palaceblue);
total = cs_exitstotal + global.levelmax*3 + (1 + 1 + 1 + 1);
global.gameclear = floor(got/total*100);

//Make sure lives don't go over 99
if (lives > 99) 
    lives = 99;

//Make sure score don't go over 9999999990
if (score > 999999990) 
    score = 999999990;
    
//Make the screen shake when the 'Thwomp' sound plays
if (!audio_is_playing(snd_thwomp))
    alarm[11] = 2;

