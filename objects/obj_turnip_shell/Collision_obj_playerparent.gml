/// @description Make the shell harm the player

if (harmplayer)
&& (other.bbox_bottom > yprevious+5)
    with (other) event_user(0);

