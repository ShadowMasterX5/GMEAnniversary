/// @description Jumping monty logic

//Default event
event_inherited()

//Land on the ground as a regular monty mole
if (gravity == 0) {

    if (vspeed >= 0) {
    
        //Switch
        switch (type) {
        
            //Monty
            case (0): {
            
                instance_create(x+8,y,obj_monty);
            } break;
            
            //Coffee Monty
            case (1): {
            
                instance_create(x+8,y,obj_monty_chase);
            } break;
        }
        
        //Destroy
        instance_destroy();
    }
}

//Use less gravity
else
    gravity = 0.15;

