/// @description Item check

//If this is a leaf, replace with a real leaf
if (sprite_index == spr_leaf)
    instance_create(xstart, ystart, obj_pickup_leaf);
    
//Otherwise, if this is a p-wing, replace with a real p-wing
else if (sprite_index == spr_pwing)
    instance_create(xstart, ystart, obj_pickup_pwing);
    
//Otherwise, if this is a propeller shroom, replace with a real propeller shroom
else if (sprite_index == spr_propellershroom)
    instance_create(xstart, ystart, obj_pickup_propeller);
    
//Otherwise, if this is a super bell, replace with a real super bell
else if (sprite_index == spr_superbell) {

    //Play 'Sprout' sound
    audio_play_sound(snd_sprout, 0, false);

    //Create a bell
    with (instance_create(xstart, ystart-2, obj_superbell))
        vspeed = -5;
}

//Otherwise
else {

    //If the sprite is a beanstalk
    if (sprite_index == spr_beanstalk) {
        
        //Replace it with a real beanstalk.
        instance_create(xstart, ystart, obj_beanstalk);
    }
    else {

        //Play sprout sound
        audio_play_sound(snd_sprout, 0, false);
        
        //If moving up...
        if (vspeed < 0) {
        
            //...and the sprite is one of the following, make it bounce.
            if (sprite_index == spr_pswitch)
            || (sprite_index == spr_gswitch)
            || (sprite_index == spr_trampoline)
            || (sprite_index == spr_powblock)
            || (sprite_index == spr_key)
            || (sprite_index == spr_egg)
            || (sprite_index == spr_egg_r)
            || (sprite_index == spr_egg_y)
            || (sprite_index == spr_egg_b)
            || (sprite_index == spr_egg_t)
            || (sprite_index == spr_egg_p)
            || (sprite_index == spr_kuriboshoe) 
            || (sprite_index == spr_baburushoe)
            || (sprite_index == spr_dossunshoe)
            || (sprite_index == spr_jugemushoe)
            || (sprite_index == spr_pentaroshoe)
            || (sprite_index == spr_propellerblock) 
            || (sprite_index == spr_billygun) 
            || (sprite_index == spr_pipeypipe) {
            
                vspeed = -2.5;
                bouncy = 1;
            }
        }        
    
        //Exit this event.
        exit;
    }
}

//Destroy
instance_destroy()

