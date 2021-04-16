/// @description Create block bumper and inherit default event

instance_create(x-8,y,obj_blockbumper);
if (held) {

    //If the player was holding something
    if (instance_exists(obj_playerparent))
    && (obj_playerparent.holding == 2)
        obj_playerparent.holding = 0; 
}

