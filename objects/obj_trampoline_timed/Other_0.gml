/// @description Destroy if outside the view

if (y > room_height+sprite_yoffset)
&& (held == 0)
    event_perform(ev_alarm, 2);

