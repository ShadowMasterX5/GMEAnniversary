/// @description outside_view()
function outside_view() {

	/*
	**  Usage:
	**      outside_view()
	**
	**  Purpose:
	**      Checks if a object is outside the view
	*/

	if (x < __view_get( e__VW.XView, 0 )-40)
	|| (y < __view_get( e__VW.YView, 0 )-32)
	|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+40)
	|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+32)
	    return true;
	else
	    return false;



}
