/// @description Collision with thrown vegetables
    
//If the vegetable is not held and it's moving down, kill.
if (other.held == 0)
&& (other.vspeed > 0) {

    //If the enemy is vulnerable to vegetables
    if (vulnerable < 99) {
    
        //Kill the enemy
        event_user(0);
        
        //Get points based on combo
        if (other.hitcombo == 0) { //200 points
        
            audio_play_sound(snd_kick2, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(2);
        }
        else if (other.hitcombo == 1) { //400 points
        
            audio_play_sound(snd_kick3, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(3);
        }
        else if (other.hitcombo == 2) { //800 points
        
            audio_play_sound(snd_kick4, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(4);
        }
        else if (other.hitcombo == 3) { //1000 points
        
            audio_play_sound(snd_kick5, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(5);
        }
        else if (other.hitcombo == 4) { //2000 points
        
            audio_play_sound(snd_kick6, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(6);
        }
        else if (other.hitcombo == 5) { //4000 points
        
            audio_play_sound(snd_kick7, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(7);
        }
        else if (other.hitcombo == 6) { //8000 points
        
            audio_play_sound(snd_kick8, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                event_user(8);
        }
        else if (other.hitcombo > 6) { //1-UP
        
            //If the combo is odd
            if (other.hitcombo % 2 == 1) {
        
                audio_play_sound(snd_kick8, 0, false);
                with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                    event_user(9);
            }
            
            //Otherwise, if the combo is even
            else if (other.hitcombo % 2 == 0) {
            
                audio_play_sound(snd_kick8, 0, false);
                with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score))
                    event_user(10);        
            }
        }
        //Create 'Spinthump' effect
        with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
        
        //Increment hitcombo
        other.hitcombo++;
    }
    
    //Bounce
    other.vspeed = -3;
    
    //Reduce horizontal speed
    other.hspeed = other.hspeed/1.5;
    
    //If the other object is a enemy, do not respawn
    if (other.object_index == obj_enemy_carried)
        with (other) turnback = -1;
}

