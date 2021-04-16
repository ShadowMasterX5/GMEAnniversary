/// @description Update offset
        
//Set y position
y += 0.25*sign(ready2);

//Change the offset movement
if (y < ystart-8)
    ready2 = 1;
else if (y > ystart)
    ready2 = -1;

