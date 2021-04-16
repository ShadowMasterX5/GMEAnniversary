/// @description Bubble logic

//Change scale
if (ready == 0) {

    xscale += 0.005;
    yscale -= 0.005;
    if (xscale > 1.1)
        ready = 1;
}
else if (ready == 1) {

    xscale -= 0.005;
    yscale += 0.005;
    if (xscale < 0.9)
        ready = 0;
}

//Move it
if (collision_rectangle(x,y,x+15,y+15,obj_up,0,0))
    vspeed -= 0.0324;
else if (collision_rectangle(x,y,x+15,y+15,obj_down,0,0))
    vspeed += 0.0324;
else if (collision_rectangle(x,y,x+15,y+15,obj_left,0,0))
    hspeed -= 0.0324;
else if (collision_rectangle(x,y,x+15,y+15,obj_right,0,0))
    hspeed += 0.0324;


