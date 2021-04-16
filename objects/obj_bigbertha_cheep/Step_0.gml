/// @description Minicheep logic

//Decrement horizontal speed
hspeed = max(0.75,abs(hspeed)-0.0324)*sign(hspeed);

//Scale
scale += 0.05;
if (scale > 1)
    scale = 1;
    
//Wave.
if (y > ystart)
    vspeed -= 0.025;
else if (y < ystart)
    vspeed += 0.025;
    
//Destroy if outside the view
if (outside_view())
    instance_destroy();

