/// @description Warp the player to another location

//Do not open if locked
if (locked != 0)
exit;

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the player is overlapping the door
    var mario = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_mario,0,0);
    if (mario)
    && (mario.state < 2)
    && (keyboard_check(global.upkey)) {
    
        //Play 'Door' sound
        audio_play_sound(snd_door, 0, false);
        
        //Animate
        image_speed = 0.15;
        
        //Make the player enter the door
        with (instance_create(x+8,y,obj_player_door)) image_xscale = obj_playerparent.xscale;
        
        //Destroy the player
        with (obj_playerparent) instance_destroy();
        
        //Warp to the assigned room
        alarm[0] = 55;
    }
}

