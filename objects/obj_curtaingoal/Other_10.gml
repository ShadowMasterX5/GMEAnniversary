/// @description Handle the scale and position of the surface.

//Snap to the center of the view.
x = round(obj_playerparent_clear.x);
y = round(obj_playerparent_clear.y);

//This shrinks the image, you can change the values to control how fast the circle should shrink.
scale += -3.125;
if (scale < 0)
    endlevel();

