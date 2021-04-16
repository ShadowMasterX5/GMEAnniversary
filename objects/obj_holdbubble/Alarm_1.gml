/// @description Pop and release the item

//Play 'Pop' sound
audio_play_sound(snd_pop, 0, false);

//Create a coin if no item was selected
if (sprout == cs_coin)
    instance_create(x+8,y+10,obj_coin);
    
//Otherwise, create a item.
else if (sprout != cs_coin) {

    //Create a item out of the sprite.
    with (sprite_make_object(x+8+(sprite_get_xoffset(constant_get_sprite(sprout))),y+10,constant_get_sprite(sprout))) {
    
        //Set the vertical speed
        vspeed = 1;
    
        //If the item is a powerup, do not move until it lands.
        if (other.sprout > cs_coin)
            permission = 1;
            
        //If the item is a jugemu shoe, move it 8 pixels to the left
        else if (other.sprout == cs_jugemushoe)
            x -= 8;
    }
}

//Create 'Pop' effect
with (instance_create(x,y,obj_smoke)) sprite_index = spr_pop;

//Destroy
instance_destroy();

