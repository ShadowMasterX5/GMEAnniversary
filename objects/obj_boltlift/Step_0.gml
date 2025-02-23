/// @description Make the platform fall when not in contact with a layer 12 tile.

if ((!tile_layer_find(12,x,y)) && (!tile_layer_find(12,x+31,y))) {

    //Create a falling bolt lift
    with (instance_create(x,y,obj_boltlift_fall)) {
    
        hspeed = other.hspeed;
        image_speed = other.image_speed;
        image_index = other.image_index;
    }
    
    //Destroy
    instance_destroy();
}

