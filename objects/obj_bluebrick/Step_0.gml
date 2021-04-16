/// @description Pick it up

//If the 'control' key is pressed.
if (keyboard_check_pressed(global.controlkey))  
&& (collision_rectangle(bbox_left-2,bbox_top-1,bbox_right+2,bbox_bottom-2,obj_playerparent,0,0))
&& (canhold()) {

    //Create a active blue brick.
    with (instance_create(obj_mario.x,obj_mario.y,obj_bluebrick_th)) {
    
        //Sprite
        sprite_index = other.heldsprite;
        
        //Shard Sprite
        shardsprite = other.shardsprite;
    
        //Hold it
        obj_playerparent.holding = 2;
        
        //Held
        held = 1;
    }
    
    //Destroy
    instance_destroy();
}

