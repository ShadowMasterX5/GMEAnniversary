/// @description Chargin' Chuck stomp event

if (sprite_index != spr_charginchuck_damage) {

    //If the chargin chuck has hp left
    if (hp > 1) {

        //Play 'Hurt' sound
        audio_play_sound(snd_hurt, 0, false);
        
        //Set the damage frame
        sprite_index = spr_charginchuck_damage;
        
        //Animate
        image_speed = 0.15;
        image_index = 0;
        
        //Stop
        hspeed = 0;
        
        //Decrement health
        hp--;
        
        //Deny movement
        alarm[10] = -1;
    }
    
    //Otherwise, get 2000 points and kill
    else {
    
        //Get 2000 points
        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(6);
        
        //Perform default kill event
        event_inherited();
    }
}

