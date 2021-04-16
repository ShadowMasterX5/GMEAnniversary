/// @description Return to the map after the music is done playing.

if (!audio_is_playing(bgm_sm1clear)) {

    //If there's not fireworks
    if (global.fireworks == 0)
        endlevel();
    
    else {
    
        //If there's more than 1 fireworks
        if (global.fireworks > 1) {
        
            //Spawn a firework
            instance_create(__view_get( e__VW.XView, 0 )+random_range(32,336),__view_get( e__VW.YView, 0 )+random_range(32,64),obj_firework_spawner);
              
            //Decrease amount of firework
            global.fireworks--;
            
            //Repeat
            alarm[2] = 30;
        }
        else {
        
        
            //Spawn a firework
            instance_create(__view_get( e__VW.XView, 0 )+random_range(32,336),__view_get( e__VW.YView, 0 )+random_range(32,64),obj_firework_spawner);
              
            //Decrease amount of firework
            global.fireworks = 0;
            
            //Repeat
            alarm[2] = 120;        
        }
    }
}
else
    alarm[2] = 1;

