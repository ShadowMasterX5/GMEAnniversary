/// @description Dialogue logic

//Advance the text if the 'Shift' key is pressed.
if (keyboard_check_pressed(global.shiftkey)) {

    //If text is being displayed
    if (showing) {
    
        //If the full message is not displayed yet, display it all.
        if (a < string_length(text))        
            a = string_length(text)+1;
        
        //Otherwise
        else {
    
            //If there is more to be displayed
            if (newtext != "") {
    
                //Make the new text the current text
                text = newtext;
                newtext = "";
    
                //Split up the message if it is too long
                event_user(0);
            }
    
            //Otherwise, end dialog.
            else {
            
                //Delete the screenshot
                background_delete(back);
            
                //Activate everything
                instance_activate_all();
                
                //Resume movement on all backgrounds
                for (var i=0; i<8; i++) {
        
                    __background_set( e__BG.HSpeed, i, temp_h[i] );
                    __background_set( e__BG.VSpeed, i, temp_v[i] );
                }
                
                //Resume particles
                with (obj_rainmaker) event_user(0);
                
                //Activate all timelines
                timeline_running = 1;
                
                //Reset the state of the shift key
                keyboard_clear(global.shiftkey);
                
                //Destroy the message box
                instance_destroy();
            }
        }
    }
}

