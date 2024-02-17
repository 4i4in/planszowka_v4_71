function exe_perform_wind_on_ground()
{
	game_map.ground = exe_adapt_wind_on(game_map.ground);
	
	game_map.ground = exe_expand_wind_on(game_map.ground);
	
	game_map.ground = exe_wind_back_from_vec_to_dir(game_map.ground);
}