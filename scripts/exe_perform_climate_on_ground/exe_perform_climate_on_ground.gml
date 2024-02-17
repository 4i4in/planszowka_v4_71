function exe_perform_climate_on_ground()
{
	game_map.ground = exe_add_climate_to(game_map.ground);
	game_map.ground = exe_lerp_climate_on(game_map.ground,3);
	game_map.ground = exe_stable_climate_by_water(game_map.ground,2);
	game_map.ground = exe_lerp_climate_water_by_water(game_map.ground,1);
	game_map.ground = exe_lerp_lowlands_by_water(game_map.ground,1);
}