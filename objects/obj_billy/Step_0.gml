/// @description Billy logic

//If moving right
if (hspeed > 0) {

    //If there's a collision in position
    if (collision_rectangle(bbox_right, y-8, bbox_right+1, y+7,obj_solid,0,0))
    || (collision_rectangle(bbox_right, y-8, bbox_right+1, y+7,obj_slopeparent,1,0))
    || (collision_rectangle(bbox_right, y-8, bbox_right+1, y+7,obj_ceilslopeparent,1,0)) {
    
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
        
        //Create a dead billy
        with (instance_create(x, y, obj_billy_dead)) {
        
            hspeed = -1;
            image_xscale = other.image_xscale;
        }
        
        //Destroy
        instance_destroy();
    }
}

//Otherwise, if moving left
else {

    //If there's a collision in position
    if (collision_rectangle(bbox_left-1, y-8, bbox_left, y+7,obj_solid,0,0))
    || (collision_rectangle(bbox_left-1, y-8, bbox_left, y+7,obj_slopeparent,1,0))
    || (collision_rectangle(bbox_left-1, y-8, bbox_left, y+7,obj_ceilslopeparent,1,0)) {
    
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
        
        //Create a dead billy
        with (instance_create(x, y, obj_billy_dead)) {
        
            hspeed = 1;
            image_xscale = other.image_xscale;
        }
        
        //Destroy
        instance_destroy();
    }
}

//Destroy when outside
if (outside_view())
    instance_destroy();

