function exe_adapt_map_by(_height_map)
{
	var _part_map = variable_clone(_height_map);
	var _max_wind = floor(sqrt(map_generator.map_x));
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _value = _part_map[_x1][_y1];
					var _counter = 0;
					for(var _ii = 0; _ii < array_length(map_generator.split_array); _ii++)
						{
							if _value < map_generator.split_array[_ii]	{_counter++};
						}
					var _name =				variable_clone(map_generator.legal_terrains_ground[_counter]);
					var _color =			variable_clone(map_generator.legal_terrains_colors[_counter]);
					var _zref =				variable_clone(map_generator.height_references[_counter]);
					var _teritory_name =	variable_clone(map_generator.current_naming_array[_x1][_y1]);
					
					var _wind = [irandom(359),irandom(_max_wind),0.,0.];//direction,magnitude
					var _climate = [];
					_part_map[_x1][_y1] = exe_return_new_tile_struct(_name,_color,_teritory_name,_zref,_climate,_wind);
						
				}
		}
	return(_part_map);
}