/// @description Restore all HP from the player

//Play 'Powerup' sound.
audio_play_sound(snd_powerup, 0, false);

//Get 1000 points
with (instance_create(x-8,y,obj_score)) event_user(5);
    
//Recover all health
health = 4;

//Destroy
instance_destroy();

