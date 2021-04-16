/// @description Default enemy flip script

//Create held object
imheld = instance_create(x,y-2,obj_galoomba_down);

//Make the held object hereby the sprite
imheld.sprite_index = spr_goombud_down;

//Make the held object hereby the scale
imheld.dir = xscale;

//Set the vspeed of the flip object
imheld.vspeed = -5;

//Set the hspeed of the flip object
if (other.hspeed == 0) {

    //If the kill object is at the left of this object
    if ((other.bbox_left+other.bbox_right)/2 < (bbox_left+bbox_right)/2)
        imheld.hspeed = 0.6;
    else if ((other.bbox_left+other.bbox_right)/2 > (bbox_left+bbox_right)/2)
        imheld.hspeed = -0.6;
}
else {

    if (other.hspeed > 0)
        imheld.hspeed = 0.6;
    else if (other.hspeed < 0)
        imheld.hspeed = -0.6;
}

//Destroy
instance_destroy();

