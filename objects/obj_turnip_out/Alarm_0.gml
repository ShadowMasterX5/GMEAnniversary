/// @description Check the frame of the puller object

//If the sprite height is greater than 20, play a 'Pickup' sound
if (sprite_height > 20)
&& (sprite_index != spr_propellerblock)
    audio_play_sound(snd_pickup, 0, false);

//If the vegetable is being drawn
if (drawpiece) {

    //Play 'Break' sound
    audio_play_sound(snd_break, 0, false);
    
    //Do not draw
    drawpiece = 0;
    
    //Create shards
    with (instance_create(x+8,y+8,obj_shard))
        motion_set(45, 6);
    with (instance_create(x+8,y+8,obj_shard))
        motion_set(60, 6);
    with (instance_create(x+8,y+8,obj_shard))
        motion_set(120, 6);
    with (instance_create(x+8,y+8,obj_shard))
        motion_set(135, 6);
}

//Depth
depth = -6;

//Draw it
drawpiece2 = 3;

//If the puller object does exist...
if (instance_exists(obj_puller)) {

    //If the player is not small (Frame 2 and above)
    if (obj_puller.image_index > 1)
        vspeed += -2.5;
        
    //Otherwise, if the player is not big (Frame 1 and below)
    else if (obj_puller.image_index <= 1)
        vspeed += -1.5;
}

