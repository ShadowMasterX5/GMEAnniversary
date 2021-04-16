/// @description Dig block logic

//Check for the player
var player = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_playerparent,0,0);

//If the player is passing through, activate it
if (ready == 0) {

    //If the player passes through, close after the player passes through
    if (player)
        ready = 1;    
}

//Otherwise, if the player passed through, close it.
else if ((ready == 1) && (!player)) {

    //Play 'Transform' sound
    audio_play_sound(snd_transform, 0, false);
    
    //Close it
    ready = 2;
    
    //Repeat
    var a = 0;
    repeat (image_xscale) {
    
        //Create a solid object
        with (instance_create(x+a,y,obj_solid)) {
        
            //Set the sprite
            sprite_index = other.sprite_index;
            
            //Make it visible
            visible = 1;
        }
        
        //Create some smoke
        instance_create(x+a,y,obj_smoke);
        
        //Next one
        a += 16;
    }
}

