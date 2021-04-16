/// @description Default enemy flip script

//Create held object
imheld = instance_create(x,y-2,obj_shell);

//Make the held object hereby the sprite or change it
if (sprite_index == spr_shell)
    imheld.sprite_index = spr_shell_down;
else if (sprite_index == spr_shell_red)
    imheld.sprite_index = spr_shell_red_down;
else if (sprite_index == spr_shell_blue)
    imheld.sprite_index = spr_shell_blue_down;
else if (sprite_index == spr_shell_yellow)
    imheld.sprite_index = spr_shell_yellow_down;
else if (sprite_index == spr_shell_big)
    imheld.sprite_index = spr_shell_big_down;
else if (sprite_index == spr_shell_big_red)
    imheld.sprite_index = spr_shell_big_red_down;
else if (sprite_index == spr_shell_buzzy)
    imheld.sprite_index = spr_shell_buzzy_down;
else
    imheld.sprite_index = sprite_index;

//Set the vspeed of the flip object
imheld.vspeed = -5;

//Check if a koopa was inside
if (koopainside != 0) {

    imheld.koopainside = koopainside;
    imheld.alarm[0] = 540;
    imheld.alarm[1] = 600;
}

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

