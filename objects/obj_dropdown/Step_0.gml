/// @description Dropdown logic

//Wall collision
event_user(3);

//Floor collision
if (image_speed == 0)
    event_user(4);

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player does have the cat suit
    if (global.powerup == cs_cat) {
    
        //Force end drop-down if the 'Down' key is not longer pressed.
        if ((ready == 1) && (!keyboard_check(vk_down))) {
            
            //Hereby both hspeed and vspeed
            with (obj_playerparent) {
            
                xspeed = other.hspeed;
                yspeed = other.vspeed;
            }
        
            //Destroy
            instance_destroy();            
        }
        
        else {
    
            //Snap the player onto this object
            obj_playerparent.x = x;
            obj_playerparent.y = y;
                
            //Stop the player
            xspeed = 0;
            yspeed = 0;
            disablegrav = 1;
        }
    }
    else {
    
        //Hereby both hspeed and vspeed
        with (obj_playerparent) {
        
            xspeed = other.hspeed;
            yspeed = other.vspeed;
        }
    
        //Destroy
        instance_destroy();
    }
}
else
    instance_destroy();

