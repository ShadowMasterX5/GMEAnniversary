/// @description Create shards

//Create glass shards
repeat (32) {

    with (instance_create(x-8+random(24),y-16+random(8),obj_basket_shard)) {
    
        motion_set(random_range(60,120),random_range(4,6));
        if (choose(0,1) == 0)
            sprite_index = spr_glass_h;
    }
}

//Create bottom part
with (instance_create(x+8,y+8,obj_basket_shard_bottom)) {

    vspeed = -3;
    hspeed = other.hspeed/2;
}

