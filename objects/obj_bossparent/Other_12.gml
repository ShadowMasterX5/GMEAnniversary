/// @description Turn at enemies / shells script

//Collision with regular enemies
var overlap = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-4,obj_bossparent,0,1);
if (overlap) 
&& (overlap.vulnerable < 99) {

    //Go right if the object is further to the right or in the same spot and a higher id.
    if ((bbox_left+bbox_right)*0.5 > (overlap.bbox_left+overlap.bbox_right)*0.5)
    || (((bbox_left+bbox_right)*0.5 = (overlap.bbox_left+overlap.bbox_right)*0.5) && (id > overlap.id)) {
    
        //Keep going right.
        hspeed = abs(hspeed);
    }
    
    //Otherwise, go left.
    else
        hspeed = -abs(hspeed);
}

//Collision with shells
var overlap2 = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom-4,obj_shell,0,1);
if (overlap2)
&& (overlap2.vulnerable < 99) {

    //Go right if the object is further to the right or in the same spot and a higher id.
    if ((bbox_left+bbox_right)*0.5 > (overlap2.bbox_left+overlap2.bbox_right)*0.5)
    || (((bbox_left+bbox_right)*0.5 = (overlap2.bbox_left+overlap2.bbox_right)*0.5) && (id > overlap2.id)) {
    
        //Keep going right.
        hspeed = abs(hspeed);
    }
    
    //Otherwise, go left.
    else
        hspeed = -abs(hspeed);    
}

