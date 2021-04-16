/// @description Generate text

//Create text
with (instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), obj_credits_text)) {

    //Set the text
    mytext = other.text[other.numb];
    
    //Set the colour
    colour = other.tcol[other.numb];
}

//Increment numb
numb++;

//Repeat the process if there's still text
if (numb != array_length_1d(text))
    alarm[0] = 32;
else
    exit;

