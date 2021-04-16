/// @description Default enemy dead script

//Create dead object
imdead = instance_create(x,y,obj_enemy_dead);

//Make the dead object hereby the sprite
imdead.sprite_index = spr_shell_blue;

//Make the dead object hereby the scale
imdead.image_xscale = xscale;

//Set the hspeed of the dead object
if (other.hspeed == 0) {

    //If the kill object is at the left of this object
    if (other.bbox_left+bbox_right/2 < bbox_left+bbox_right/2)
        imdead.hspeed = 0.6;
    else if (other.bbox_left+bbox_right/2 > bbox_left+bbox_right/2)
        imdead.hspeed = -0.6;
}
else {

    //If the kill object is the player, hereby player's hspeed
    if (other.object_index == obj_playerparent) {
    
        //If the player is sliding
        if (other.sliding)        
            imdead.hspeed = other.xspeed;
    }
        
    //Otherwise, set default speed
    else {
    
        if (other.hspeed > 0)
            imdead.hspeed = 0.6;
        else if (other.hspeed < 0)
            imdead.hspeed = -0.6;
    }
}

//Destroy
instance_destroy();

