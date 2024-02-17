function exe_perform_humidity_on_ground()
{
	game_map.ground = exe_prepare_climate_array_for_humidity(game_map.ground);
	
	game_map.ground = exe_lerp_humidity(game_map.ground);
	
	game_map.ground = exe_flat_humidity_0_1(game_map.ground);
}