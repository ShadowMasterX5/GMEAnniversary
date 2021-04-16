/// @description Update how many parts are above

//Only update if there's no body part below
if (mebelow == noone) {

    //Repeat 99 times
    repeat (99) {
    
        //If there's a pokey part above, update a
        if (position_meeting(x, bbox_top+a, obj_pokey))
            a -= 14;
        else {
        
            a += 14;
            if (a < -14)
                a = -14;
        }
    }
}

//Keep updating
alarm[9] = 2;

