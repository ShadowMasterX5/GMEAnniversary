/// @description Spawn a firework

//Sprite to use
sprite = choose(spr_firework,spr_firework_b,spr_firework_c,spr_firework_d);

//Spawn firework
for (i=0; i<11; i++;) {

    firework = instance_create(x+8,y+8,obj_firework);
    with (firework) {
    
        //Set the sprite
        sprite_index = other.sprite;
        
        //Motion
        motion_set(90+(36*other.i),3);
    }
}

//Get 500 points
score += 500;

//Play 'Firework' sound
audio_play_sound(snd_firework, 0, false);

