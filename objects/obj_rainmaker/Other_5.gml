/// @description Clear particles and destroy particle system

//Destroy emitters
part_emitter_destroy_all(rain_sys);

//Destroy particles
part_type_destroy(rain);

//Destroy rain system
part_system_destroy(rain_sys);
    
//Stop 'Rain' sound
audio_stop_sound(snd_rain);

//Destroy
instance_destroy();

