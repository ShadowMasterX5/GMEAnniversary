/// @description Open the chest

//If the player didn't opened a chest yet
if (keyboard_check_pressed(global.controlkey))
&& (!obj_toad.ready)
&& (collision_rectangle(x,y,x+31,y+31,obj_playerparent,0,0)) {

    //Make toad kick out the player outta his house
    with (obj_toad) {
    
        ready = 1;
        alarm[2] = 360;
    }
    
    //Change frame
    image_index = 1;
    
    //Get powerup
    with (instance_create(x+16,y,obj_powerupget)) {
    
        //If health mode is active, turn mushrooms into fire flowers
        if (global.healthmode == 1)
        && (global.prize[other.type] == cs_big) {
        
            global.prize[other.type] = cs_fire;
        }
    
        //Set the sprite for the chest
        sprite_index = constant_get_sprite(global.prize[other.type]);
    }
}

