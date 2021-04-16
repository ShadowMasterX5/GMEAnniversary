/// @description Handle Mario's projectiles

//If controls are not disabled and Mario is not holding or doing a spinjump.
if (disablecontrol == false)
&& (sliding == 0)
&& (holding == 0)
&& (kicking == 0)
&& (wallkick == 0)
&& (stompstyle != 1) {
        
    //Tanooki
    if (global.powerup == cs_tanooki)
    && (keyboard_check(global.downkey))
    && (global.mount == 0)
    && (instance_number(obj_spinner) < 1) {
            
        //Play a transforming sound.
        audio_play_sound(snd_transform, 0, false);
    
        //Create a poof.
        with (instance_create(x,y,obj_player_transform)) sequence = 4;
        
        //Create a statue.
        instance_create(x,y,obj_statue);        
    }
    
    //Cat
    else if (global.powerup == cs_cat)
    && (keyboard_check(global.downkey))
    && (global.mount == 0)
    && (state == 2)
    && (yspeed > 0)
    && (instance_number(obj_spinner) == 0)
    && (instance_number(obj_dropdown) < 1) {
    
        //Create drop down
        with (instance_create(x,y,obj_dropdown))
            image_xscale = 1*sign(other.xscale);
    }
    
    //If Mario is not crouched down
    else if (!crouch) {
    
        //Fireball
        if (global.powerup == cs_fire)
        && (instance_number(obj_fireball) < 2) {
        
            firing = 9;
            with (instance_create(x,y,obj_fireball)) {
            
                hspeed = 3*sign(other.xscale);
                if (keyboard_check(global.upkey))
                    vspeed = -3;
            }
        }            
        
        //Iceball
        else if ((global.powerup == cs_ice) || ((global.powerup == cs_penguin) && (swimming == false)))
        && (instance_number(obj_iceball) < 2) {
        
            firing = 9;
            with (instance_create(x,y,obj_iceball)) {
            
                hspeed = other.xspeed+(1.2*sign(other.xscale));
                if (keyboard_check(global.upkey))
                    vspeed = -3;
            }
        }
        
        //Raccoon / Tanooki or Cat
        else if ((global.powerup == cs_leaf) || (global.powerup == cs_tanooki) || (global.powerup == cs_cat))
        && (instance_number(obj_dropdown) == 0)
        && (instance_number(obj_spinner) < 1) {
        
            with (instance_create(x,y,obj_spinner))
                image_xscale = 1*sign(other.xscale);
        }
            
        //Hammer
        else if (global.powerup == cs_hammer)
        && (instance_number(obj_hammer) < 2) {
        
            firing = 9;
            with (instance_create(x,y,obj_hammer)) {
            
                hspeed = other.xspeed+(1.25*sign(other.xscale));
                if (keyboard_check(global.upkey))
                    vspeed = -5;
            }
        }
        
        //Boomerang
        else if (global.powerup == cs_boomerang)
        && (instance_number(obj_boomerang) < 2) {
        
            firing = 9;
            with (instance_create(x,y-10,obj_boomerang))
                hspeed = 2*sign(other.xscale);
        }
        
        //Superball
        else if (global.powerup == cs_super)
        && (instance_number(obj_superball) < 2) {
        
            firing = 9;
            with (instance_create(x,y,obj_superball)) {
            
                hspeed = 3*sign(other.xscale);
                if (keyboard_check(global.upkey))
                    vspeed = -3;
            }
        }
        
        //Bomb
        else if (global.powerup == cs_bomb)
        && (instance_number(obj_bomb) < 1) {
        
            with (instance_create(x-8,y,obj_bomb))
                held = 1;
        }
        
        //Lightning
        else if (global.powerup == cs_lightning)
        && (instance_number(obj_bolt) < 2) {
        
            firing = 9;
            with (instance_create(x,y+2,obj_bolt))
                hspeed = 6*sign(other.xscale);
        }
        
        //Football
        else if (global.powerup == cs_football)
        && (instance_number(obj_football) < 1) {
        
            with (instance_create(x-8,y,obj_football))
                held = 1;
        }
    }
}

