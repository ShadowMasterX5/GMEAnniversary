/// @description Shoot a bullet out of the cannon

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//If the gray p-switch is active
if (obj_levelcontrol.gswitchon == true) {

    alarm[0] = 1;
    exit;
}

//Shoot left or right depending of the player's position
if (direct = -1) {

    //If the player is nearby the cannon
    if (obj_playerparent.x > bbox_left-32)
    && (obj_playerparent.x < bbox_right+32) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise
    else {
    
        //Play 'Cannon' sound
        audio_play_sound(snd_explode, 0, false);
        
        //Create smoke
        instance_create(x,y,obj_smoke);
        
        //Shoot again
        alarm[0] = 90+random(round(120))
        
        //Create a bullet
        with (instance_create(x,y,obj_bullet)) {
        
            if (obj_playerparent.x < x)
                hspeed = -2;
            else
                hspeed = 2;
        }
    }
}

//Otherwise, shoot up or down depending of the player position
else if (direct = -2) {

    //If the player is nearby the cannon
    if (obj_playerparent.x > bbox_left-32)
    && (obj_playerparent.x < bbox_right+32) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise
    else {
    
        //Play 'Cannon' sound
        audio_play_sound(snd_explode, 0, false);
                
        //Create smoke
        instance_create(x,y,obj_smoke);
        
        //Shoot again
        alarm[0] = 90+random(round(120))
        
        //Create a bullet
        with (instance_create(x,y,obj_bullet)) {
        
            if (obj_playerparent.y < y)
                vspeed = -2;
            else
                vspeed = 2;
        }
    }
}

//Otherwise, shoot in the given direction
else {

    //If the player is nearby the cannon
    if (obj_playerparent.x > bbox_left-32)
    && (obj_playerparent.x < bbox_right+32) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise
    else {

        //Play 'Explode' sound
        audio_play_sound(snd_explode, 0, false);
                
        //Create smoke
        instance_create(x,y,obj_smoke);
        
        //Shoot again
        alarm[0] = 90+random(round(120));
        
        //Create bullet
        with (instance_create(x,y,obj_bullet)) {
        
            speed = 2;
            direction = other.direct;
        }
    }
}
