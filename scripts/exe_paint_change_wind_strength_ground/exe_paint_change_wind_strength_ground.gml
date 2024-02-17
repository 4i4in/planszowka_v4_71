function exe_paint_change_wind_strength_ground(_xx1,_yy1,_change)
{
	var _value = game_map[$ control_array.map_current_name_level][_xx1][_yy1][$ "wind"][1];
	_value += _change;
	if _value < 0.	{_value = 0.;};
	if _value > 5.	{_value = 5.;};
	game_map[$ control_array.map_current_name_level][_xx1][_yy1][$ "wind"][1] = _value;
	
	var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
	
	var _base_num = -1;
	for(var _ii = 0; _ii < array_length(map_generator.legal_terrains_ground); _ii++)
		{
			if map_generator.legal_terrains_ground[_ii] == _tile.base_name	{_base_num = _ii; break;};
		}
	if _base_num > -1
		{
			exe_paint_add_ground_terrain(_xx1,_yy1,_base_num);
		}
}