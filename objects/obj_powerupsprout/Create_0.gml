/// @description A sprouting item

//Animate
image_speed = 0;

//Does this object bounce outta the block
bouncy = 0;

//Item check
alarm[0] = 2;

//If there is a solid on top of the block
if (position_meeting(x,y-8,obj_solid)) {

    //Go down if both sides are blocked
    if (position_meeting(x-16,y+8,obj_solid))
    && (position_meeting(x+16,y+8,obj_solid))
        vspeed = 0.35;

    //Go right if the left side is blocked
    else if (position_meeting(x-16,y+8,obj_solid))
        hspeed = 0.35;

    //Go left if the right side is blocked
    else if (position_meeting(x+16,y+8,obj_solid))
        hspeed = -0.35;

    //Otherwise, go towards Mario
    else {
    
        //If Mario does exist.
        if (instance_exists(obj_mario)) {
        
            if (obj_mario.x > x)
                hspeed = 0.35;
            else
                hspeed = -0.35;
        }
        
        //Otherwise, if it does not exist.
        else
            hspeed = -0.35;
    }

}

//Otherwise, move up
else
    vspeed = -0.35;

