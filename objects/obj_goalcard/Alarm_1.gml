/// @description Get extra lives out of the cards

with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+216,obj_score_goal)) {

    depth = -4;
    image_index = other.cardtype;
}

