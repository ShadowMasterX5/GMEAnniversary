/// @description Koopa shell logic

//Inherit event
event_inherited();

//Bump nearby blocks
if (sign(hspeed) != sign(prevhspeed)) {

    //If the shell is moving left
    if (hspeed > 0) {
    
        //Create shell thump effect
        instance_create(x-5,y+8,obj_shellbump);
        
        //Create bumper
        instance_create(x-8,y,obj_blockbumper);        
    }
    
    //Otherwise, if the shell is moving right
    else if (hspeed < 0) {
    
        //Create shell thump effect
        instance_create(x+5,y+8,obj_shellbump);
        
        //Create bumper
        instance_create(x-8,y,obj_blockbumper);             
    }
    
    //Set new prev. hspeed
    prevhspeed = hspeed;
    
    //Play 'Bump' sound if not outside the view
    if (!outside_view())
    && (!audio_is_playing(snd_bump))
        audio_play_sound(snd_bump, 0, false);
}

//Allow the shell to hurt the player
if (harmplayer == 0)
&& (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_playerparent,0,0))
    harmplayer = 1;

