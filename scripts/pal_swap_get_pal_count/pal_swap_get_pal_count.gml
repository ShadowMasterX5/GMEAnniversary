/// @description pal_swap_get_pal_count(pal_sprite);
/// @param pal_sprite
function pal_swap_get_pal_count() {

	/*
	**  Usage:
	**      pal_swap_get_pal_count(pal_sprite);
	**
	**  Arguments:
	**      pal_sprite: Palette sprite
	**
	**  Returns:
	**      Returns the number of palettes of the given sprite.
	*/

	return (sprite_get_width(argument[0]));



}
