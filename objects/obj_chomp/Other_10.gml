/// @description Chain Chomp kill

//Create dead object.
imdead = instance_create(x,y,obj_enemy_dead);

//Set the sprite
imdead.sprite_index = spr_chainchomp;

//Set the facing direction
imdead.image_xscale = xscale;

//Set a waving movement
imdead.hspeed = 0.5;
imdead.alarm[0] = 4;

//Set the vertical speed
imdead.vspeed = -6;

//Dead followers.
multidead = instance_create(x,y,obj_enemy_multidead);
with (multidead) {

    //Set the enemy parts.
    count = 4;
    
    //Set the xscale
    xscale = 1;
    
    //Set the sprite
    sprite_index = spr_chainchomp_chain;
}

//Destroy
instance_destroy();
