/// @description Destroy if allowed

//If this switch can destroy
if (destroy) {

    instance_create(x,y,obj_smoke);
    instance_destroy();
    exit;
}

