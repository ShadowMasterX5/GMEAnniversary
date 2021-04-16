/// @description Get score

//Get some points
with (instance_create(x,ystart,obj_score)) {

    if (other.handicap > 4)
        event_user(9);
    else
        event_user(4+other.handicap);
}

//Destroy
instance_destroy();

