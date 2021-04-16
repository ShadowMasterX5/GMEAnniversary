/// @description Keep the rider active

//Inherit event
event_inherited();

//Set semisolid collision
mytop.x = x;
mytop.y = bbox_top;

//If the rider does exist
if (instance_exists(rider)) {
    
    //Keep the rider active
    instance_activate_object(rider);
    
    //Make the rider hereby the xscale
    rider.xscale = xscale;
    
    //Snap to position.
    rider.x = x;
    rider.y = ceil(bbox_top-16);
}

