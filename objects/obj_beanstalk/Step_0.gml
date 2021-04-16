/// @description Beanstalk logic

//Create a new vine if snapped onto the grid
if (ready) 
&& (place_snapped(0,16)) {

    //Do not create vines
    ready = false;
    alarm[0] = 2;
    
    //Create a new vine
    with (instance_create(x-8,y,obj_vine)) 
        image_speed = 0;
}

//Check for a solid
var block = collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_top-1,obj_solid,0,0);

//Destroy when outside or when in contact with a solid.
if (y < -48) 
|| ((block) && (block.y < ystart-16))
    instance_destroy();

