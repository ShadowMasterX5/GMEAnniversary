/// @description Create platform

//Create a fixed amount of platforms
for (i=0; i<1; i++) {

    platform[i] = instance_create(x,y,obj_ferrisplatform_platform);
    platform[i].platform = platform[i];
}

//Start moving.
active = true;

