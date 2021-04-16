/// @description Move

//Up
if (collision_rectangle(x,y,x+15,y+15,obj_up,0,0))
    vspeed = -1;

//Down
else if (collision_rectangle(x,y,x+15,y+15,obj_down,0,0))
    vspeed = 1;

