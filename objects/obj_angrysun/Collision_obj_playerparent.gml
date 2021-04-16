/// @description Allow collection if happy

if (happy == true) 
&& (ready == true) {

    //Play 'Powerup' sound
    audio_play_sound(snd_scatter, 0, false);
    
    //Wipe enemies from screen
    with (obj_enemyparent) {
    
        //If the enemy is not vulnerable
        if (vulnerable < 99) {
    
            //Create slow spark effects
            var a = 0;
            repeat (8) {
            
                with (instance_create(round(bbox_left+bbox_right)/2-8,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) {
                
                    //Set the sprite
                    sprite_index = spr_boltspark;
                    
                    //Animate
                    image_speed = 0.1;
                    
                    //Motion
                    motion_set(a,0.5);
                }
                a += 45;
            }
            
            //Create fast spark effects
            var b = 22.5;
            repeat (8) {
            
                with (instance_create(round(bbox_left+bbox_right)/2-8,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) {
                
                    //Set the sprite
                    sprite_index = spr_boltspark;
                    
                    //Animate
                    image_speed = 0.1;
                    
                    //Motion
                    motion_set(b,1);
                }
                b += 45;
            }
            
            //Destroy
            instance_destroy();
            
            //Get 200 points for each enemy wiped.
            with (instance_create(round(bbox_left+bbox_right)/2,y,obj_score))
                event_user(2);           
        }        
    }
    
    //Destroy
    instance_destroy();
    
    //Get 1000 points for each enemy wiped.
    with (instance_create(round(bbox_left+bbox_right)/2,y,obj_score))
        event_user(5);       
}
else
    event_inherited();

