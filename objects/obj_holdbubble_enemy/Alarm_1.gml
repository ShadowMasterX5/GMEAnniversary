/// @description Pop and release the enemy

//Play 'Pop' sound
audio_play_sound(snd_pop, 0, false);

//Create a enemy based on the enemy's sprite
switch (sprout) {

    //Goomba
    case (spr_goomba): 
        instance_create(x+8+(sprite_get_xoffset(sprout)), y+10, obj_goomba); break;
        
    //Bob-Omb
    case (spr_bobomb):
        instance_create(x+8+(sprite_get_xoffset(sprout)), y+10, obj_bobomb); break;
}

//Create 'Pop' effect
with (instance_create(x,y,obj_smoke)) sprite_index = spr_pop;

//Destroy
instance_destroy();

