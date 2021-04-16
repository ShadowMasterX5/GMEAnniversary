/// @description Clear particles and destroy system

//Destroy emitters
part_emitter_destroy_all(snow_sys);

//Destroy particles
part_type_destroy(snow);

//Destroy snow system
part_system_destroy(snow_sys);

//Destroy this object
instance_destroy();

