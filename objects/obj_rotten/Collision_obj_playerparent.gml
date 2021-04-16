/// @description Hurt Mario if not invulnerable

//If the player is invulnerable
if (instance_exists(obj_invincibility)) {

    //Play 'Kick' sound
    audio_play_sound(snd_kick, 0, false);

    //Get 1000 points
    with (instance_create(x-8, y, obj_score)) event_user(5);

    //Create smoke
    instance_create(x-8,y,obj_smoke);
    
    //Destroy and exit
    instance_destroy();
    exit;
}

//Hurt the player
with (other) event_user(0);

//Destroy
instance_destroy();

