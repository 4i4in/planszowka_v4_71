function exe_press_edges_on_land(_height_map,_edge_map,_mapheight_mean)
{
	for(var _ii = 0; _ii < array_length(_edge_map); _ii++)
		{
			var _x1	=	_edge_map[_ii][0];
			var _y1	=	_edge_map[_ii][1];
			var _col1 =	_edge_map[_ii][2];
			if _col1 > 0
				{
					var _value_here = 	_height_map[_x1][_y1];
					if _value_here > _mapheight_mean - map_generator.noise_level
						{
							_value_here -= irandom(map_generator.noise_level) * irandom(map_generator.noise_level);
							_height_map[_x1][_y1] = _value_here;
						}
				}
		}
		
	return(_height_map);
}