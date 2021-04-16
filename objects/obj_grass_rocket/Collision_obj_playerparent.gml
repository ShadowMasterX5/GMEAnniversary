/// @description Make the player interact with the item

if (keyboard_check_pressed(global.controlkey))
&& (canpull()) {

    //Force player hold
    with (obj_playerparent) {
    
        holding = 1;
        visible = 0;
    }
    
    //Create puller
    instance_create(other.x,other.y,obj_puller);
    
    //Create a rocket
    alarm[0] = 20;
}

