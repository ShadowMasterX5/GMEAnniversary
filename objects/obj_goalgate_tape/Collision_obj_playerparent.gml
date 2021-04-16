/// @description Get points out of the tape and clear the level

//Play 'Goal' sound
audio_play_sound(snd_goal, 0, false);

//Turn the player onto the goal object
with (other) {

    with (instance_create(x,y,obj_player_goal_smw)) {
    
        vspeed = other.yspeed;
    }
    instance_destroy();
}

//Create a flying tape
instance_create(x+24,y+12,obj_goalgate_tape_b);

//Destroy the tape
instance_destroy();

//Get points
myscore = instance_create(x-8, y, obj_score);

//3-UP
if (y < ystart-127)
    with (myscore) event_user(10);
    
//1-UP
else if (y < ystart-120)
    with (myscore) event_user(9);
    
//4000 points
else if (y < ystart-96)
    with (myscore) event_user(7);
    
//1000 points
else if (y < ystart-64)
    with (myscore) event_user(5);
    
//400 points
else if (y < ystart-32)
    with (myscore) event_user(3);

//100 points
else
    with (myscore) event_user(1);

