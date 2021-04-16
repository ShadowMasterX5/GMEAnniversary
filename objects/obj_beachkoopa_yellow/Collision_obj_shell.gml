/// @description Climb inside the shell

//If the koopa is jumping inside, turn into a kamikaze koopa (no matter what colour is used.
if (jumping == 1)
&& (gravity == 0) 
&& (ready == 2) {
    
    //With the shell
    with (other) {
    
        instance_create(x,y,obj_koopa_kamikaze);
        instance_destroy();
    }
    
    //Destroy this object
    instance_destroy();
}
else
    event_inherited();

