/// @description Warp from the bottom

player = collision_rectangle(x+16,y+18,x+16,y+20,obj_playerparent,0,0);
if (player)
&& (player.yspeed < 0)
&& (keyboard_check(global.upkey)) {

    //Play 'Warp' sound
    audio_play_sound(snd_warp, 0, false);
    
    //Create pipe player
    with (instance_create(x+16,y+14,obj_player_warp)) {
        
        //Set direction
        direction = 90;
        
        //Facing direction
        image_xscale = other.player.xscale;
        
        //Flashing
        isflashing = other.player.isflashing;
                
        //Move the player 16 pixels upwards if he is NOT small or it's not mounted
        if (global.powerup != cs_small)
        || (global.mount == 1) 
            y += 16;
    }
    
    //Destroy player
    with (player) instance_destroy();
}

