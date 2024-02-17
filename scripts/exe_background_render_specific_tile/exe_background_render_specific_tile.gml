function exe_background_render_specific_tile()
{
	var _curent_x = background_function.carry[0];
	var _curent_y = background_function.carry[1];
	var _curent_terrain_level = background_function.carry[2];
	var _curent_player = background_function.carry[3];

	exe_render_refresh_tile(_curent_x,_curent_y,_curent_terrain_level,_curent_player);
	
	exe_end_background_function();
}