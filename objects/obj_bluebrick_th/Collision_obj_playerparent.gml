/// @description Make the player interact with the item

//If the item was not kicked yet
if (!ready) {

    //If the item is not being held
    if (canhold())
    && (!inwall)
    && (other.bbox_bottom > bbox_top) {
        
        //Make the player hold it
        other.holding = 2;
        
        //Hold
        held = 1;
        
        //Stop movement
        speed = 0;
        gravity = 0;        
    } 
    
    //Otherwise, if the item is not moving up
    else if ((vspeed >= 0) && (!held)) {
    
        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);
        
        //Make the player visually kick the item
        with (obj_playerparent) {
        
            if (holding == 0)
                event_user(4);
        }
        
        //Set default animation
        image_speed = 0.5;
        
        //Disable alarms
        alarm[0] = -1;
        alarm[1] = -1;
        
        //Kick it
        ready = 1;
        
        //Create thump
        with (instance_create(x,y,obj_smoke)) sprite_index = spr_spinthump;
        
        //Set the horizontal speed
        if (obj_playerparent.x < x)
            hspeed = 2.7;
        else
            hspeed = -2.7;
    }   
}

//Otherwise, if it's moving and this block can harm the player, do it. {
else if ((ready) && (harmplayer)) {
    
    //Harm the player
    with (other) event_user(0);
    
    //Destroy if this is a red throwable brick
    if (sprite_index == spr_redbrick_th)
        event_user(0);
}

