/// @description Open the secret exit

//If the animation has not started and the player brings a key
if (ready == 0)
&& (other.held == 1)
&& (instance_exists(obj_playerparent)) {
    
    //Begin key sequence
    event_user(0);

    //Save the state of the key
    kx = round(other.x);
    ky = round(other.y);
    kd = other.dir;

    //Delete the key
    with (other) instance_destroy()

    //Save the state of Mario, and delete him
    with (obj_playerparent) {
    
        //X Position
        other.mx = round(x);
        
        //Y Position
        other.my = round(y);
        
        //Sprite
        other.ms = sprite_index;
        
        //Frame
        other.mi = image_index;
        
        //Facing direction
        other.md = xscale;
        
        //Destroy
        instance_destroy();
    }

    //Return to the world map after the animation
    alarm[0] = 120;
}

