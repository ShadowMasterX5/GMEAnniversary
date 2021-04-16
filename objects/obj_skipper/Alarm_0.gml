/// @description Begin the game

if (instance_number(obj_fadein) == 0)
    with (instance_create(0,0,obj_fadein)) target = room_next(room);

