/// @description Handle the scale and position of the surface.

//Snap to the center of the view.
x = round(x);
y = round(y);

//This grows the image, you can change the values to control how fast the circle should grow.
scale += -6.25;
if (scale < 0) {

    //Create fade out effect
    if (instance_number(obj_fadein) == 0) {
     
        with (instance_create(0,0,obj_fadein))
            target = other.target;   
    }
}

