/// @description Warp from the right

player = collision_rectangle(x+18,y,x+18,y+31,obj_playerparent,0,0);
if (player)
&& (player.yspeed == 0)
&& (keyboard_check(global.leftkey)) {

    //Play 'Warp' sound
    audio_play_sound(snd_warp, 0, false);
    
    //Create pipe player
    with (instance_create(x+24,y+16,obj_player_warp)) {
        
        //Set direction
        direction = 180;
        
        //Facing direction
        image_xscale = -1;
        
        //Flashing
        isflashing = other.player.isflashing;
    }
    
    //Destroy player
    with (player) instance_destroy();
}

