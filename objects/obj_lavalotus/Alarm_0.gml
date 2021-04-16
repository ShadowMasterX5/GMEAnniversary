/// @description Shoot fireballs

//Set spitting sprite
sprite_index = spr_lavalotus_spit;

//Do not animate
image_speed = 0;
image_index = 0;

//Animate
alarm[1] = 60;

//Create batch of fireballs
for (i=0; i<5; i++) {

    ID = instance_create(x,y-4,obj_lavalotus_ball);
    with (ID) {
    
        speed = 0.35;
        direction = 70+(10*other.i);
    }
}

