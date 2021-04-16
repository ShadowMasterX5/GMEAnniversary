/// @description Hawkmouth, clear the level by entering it's mouth

//Make it solid on top
mytop = instance_create(x+8,bbox_top,obj_slopeparent)
with (mytop) {

    sprite_index = spr_hawkmouth_mask;
}
    
//Do not animate
image_speed = 0;
image_index = 0;

//Move 8 pixels to the right
x += 8;

//Y position of the jaw
myy = 0;

//Whether the hawk is opening
ready = 0;

//Facing direction
xscale = 1;
if (collision_point(x-9,y,obj_solid,0,0))
    xscale = -1;

