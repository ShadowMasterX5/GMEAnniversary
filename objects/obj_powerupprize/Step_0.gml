/// @description Make the powerup stay in view before falling.

y = __view_get( e__VW.YView, 0 )+48;
if (instance_exists(obj_playerparent))
    x = obj_playerparent.x;

