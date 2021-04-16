/// @description Collision with the player

//If the player is climbing and is smacking the fence
if (other.state == 3)
&& (other.netsmack > 0) {

    //If the koopa is behind the fence
    if (depth == 11) {

        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);
        
        //Get 400 points
        with (instance_create(x,y,obj_score)) event_user(3);
        
        //Create spin thump
        with (instance_create(other.x,other.y,obj_smoke)) sprite_index = spr_spinthump;
        
        //Kill enemy
        event_user(0);
    }
}

//Inherit event
event_inherited();

