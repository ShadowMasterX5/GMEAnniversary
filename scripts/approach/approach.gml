/// @description approach(start, end, shift);
/// @param start
/// @param  end
/// @param  shift
function approach(argument0, argument1, argument2) {

	/*
	**  Usage:
	**      approach(start, end, shift);
	**
	**  Purpose:
	**      Shifts the values on start and end
	*/

	if (argument0 < argument1)
	    return min(argument0 + argument2, argument1); 
	else
	    return max(argument0 - argument2, argument1);



}
