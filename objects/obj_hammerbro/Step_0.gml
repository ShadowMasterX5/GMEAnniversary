/// @description Hammer Bro logic

//Floor collision if allowed
if (throughsolid == 0)
    event_user(4);

//Otherwise, cap vertical speed
else if (vspeed > 4)
    vspeed = 4;

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

