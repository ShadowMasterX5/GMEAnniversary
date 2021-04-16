/// @description Throw a boomerang

//Play 'Hammer' sound
audio_play_sound(snd_hammer, 0, false);

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player is at the right.
    if (obj_playerparent.x > x) {
    
        with (instance_create(x-10,y-8,obj_boomerangbro_boomerang)) {
        
            hspeed = 2;
            image_xscale = 1;
            parent = other.id;
            if (other.id.blue)
                sprite_index = spr_boomerangbro_boomerang_blue;
        }
    }
    
    //Otherwise, if the player is at the left.
    else if (obj_playerparent.x < x) {
    
        with (instance_create(x+10,y-8,obj_boomerangbro_boomerang)) {
        
            hspeed = -2;
            image_xscale = -1;
            parent = other.id;
            if (other.id.blue)
                sprite_index = spr_boomerangbro_boomerang_blue
        }
    }
}

//Otherwise, if it does not exist.
else {
    
    with (instance_create(x+10,y-8,obj_boomerangbro_boomerang)) {
    
        hspeed = -2;
        image_xscale = -1;
        parent = other.id;
        if (other.id.blue)
            sprite_index = spr_boomerangbro_boomerang_blue
    }
}

//Set the default sprite.
shoot = 0;

//Set the pose
if (shoot2 == 0) {

    shoot2 = 1;
    alarm[2] = 90;
}
else if (shoot2 == 1) {

    shoot2 = 0;
    alarm[2] = 180
}

