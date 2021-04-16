/// @description Draw the door

//Draw the inside part of the door if the door is opening
if (image_index < 4) then draw_sprite(spr_door_inside, 0, round(x), round(y));

//Draw the door
draw_sprite(sprite_index,-1, round(x), round(y));

//If the door is blocked with wood
if (locked == 2) 
    draw_sprite(spr_door_block, 0, round(x), round(y));
    
//Otherwise, if the door is locked with a key
else if (locked == 1) 
    draw_sprite(spr_door_lock, 0, round(x), round(y));

