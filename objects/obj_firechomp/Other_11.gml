/// @description Fire chomp kill

//Create dead object.
imdead = instance_create(x,y,obj_enemy_stomped);

//Set the sprite
imdead.sprite_index = sprite_index;

//Set the facing direction
imdead.image_xscale = xscale;

//Set a waving movement
imdead.hspeed = 0.5;
imdead.alarm[0] = 4;

//If the fire chomp does have fireballs following
if (followers > 1) {

    //Dead followers.
    multidead = instance_create(x,y,obj_enemy_multidead);
    with (multidead) {
    
        //Set the sprite
        sprite_index = spr_fireball;
    
        //Set the enemy parts
        count = other.followers-1;
        
        //Set the enemy spd
        spd = 0;
        
        //Set the xscale
        xscale = 1;
    }
}

//Destroy
instance_destroy();

