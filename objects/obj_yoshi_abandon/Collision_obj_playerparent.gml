/// @description Ride Yoshi

//If Mario jumps on the Yoshi
if (other.state = 2)
&& (other.yspeed > 0)
&& (other.holding = 0)
&& (other.visible = 1) 
&& (other.bbox_bottom < yprevious+5) {

    //With the player
    with (obj_playerparent) {
    
        //Snap into yoshi's position
        x = other.x;
        y = other.y-2;
        
        //Force him to hold yoshi
        holding = 4;
        
        //Force end variables
        event_user(14);
    }

    //Make a Yoshi
    with (instance_create(x,y,obj_yoshi)) colour = other.colour;

    //Play 'Yoshi' sound
    audio_play_sound(snd_yoshi, 0, false);

    //Destroy
    instance_destroy();
}

