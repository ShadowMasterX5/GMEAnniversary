/// @description Default throw / kick event.

//If 'Up' is pressed, throw it upwards.
if (keyboard_check(global.upkey)) {

    //Play 'Kick' sound.
    audio_play_sound(snd_kick, 0, false);
    
    //Create hit
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
    
    //If the item is not overlapping a solid.
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
        
        //Set the horizontal speed
        hspeed = obj_playerparent.xspeed/2;
        
        //If the item is not in a water surface
        if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0))
            vspeed = -7;
            
        //Otherwise
        else {

            vspeed = -3.5;
            swimming = true;
        }
    }
    
    //Otherwise, kill it
    else {
    
        //Create dead object
        with (instance_create(x,y,obj_enemy_dead)) {
        
            sprite_index = other.sprite_index;
            image_xscale = other.dir;
        }
    
        //Get 100 points
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score)) event_user(1);
        
        //Destroy
        instance_destroy();  
    }
}

//Otherwise, if 'Down' is pressed.
else if (keyboard_check(global.downkey)) {
    
    //Check if the object is stuck on a solid and move it
    if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
    
        //Move it to a safe position
        inwall = true;
        
        //Stop it
        hspeed = 0;
    }
    
    //If there's not a slope in place...
    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))
        hspeed = 0.5*obj_playerparent.xscale;
    
    //Otherwise
    else
        vspeed = 0.1;    
}

//Otherwise, throw it to the side.
else if (vspeed >= 0) {
        
    //Play 'Kick' sound.
    audio_play_sound(snd_kick, 0, false);

    //Kill instantly if in contact with a solid
    if (place_meeting(x,y,obj_solid)) {
    
        //Create dead object
        with (instance_create(x,y,obj_enemy_dead)) {
        
            sprite_index = other.sprite_index;
            image_xscale = other.dir;
        }
    
        //Get 100 points
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score)) event_user(1);
        
        //Destroy
        instance_destroy();  
    }
    else {
    
        //Create moving shell
        with (instance_create(x,y,obj_shell_kick)) {
                        
            //Set the same sprite
            sprite_index = other.sprite_index;
            
            //If a koopa is inside
            koopainside = other.koopainside;    
            
            //Set the previous hspeed
            prevhspeed = 2.7*sign(obj_playerparent.xscale);
            
            //Set the horizontal speed based on the facing direction
            hspeed = 2.7*sign(obj_playerparent.xscale);                                       
        }
    }
        
    //Create hit
    with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
    
    //Destroy
    instance_destroy();
}

