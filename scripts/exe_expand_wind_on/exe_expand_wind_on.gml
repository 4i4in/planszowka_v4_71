function exe_expand_wind_on(_map)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					var _xvec1 = _tile.wind[0];
					var _yvec1 = _tile.wind[1];
					
					for(var _dir = 0; _dir < 8; _dir++)
						{
							var _xvec2 =	exe_return_wind_vec(_map,_x1,_y1,_dir,0);
							var _yvec2 =	exe_return_wind_vec(_map,_x1,_y1,_dir,1);
							var _ref_lookup = exe_return_wind_ref_looup(_map,_x1,_y1,_dir);
							
							var _vec2_mag = point_distance(0,0,_xvec2,_yvec2);
							var _dotp = dot_product_normalised(_xvec1,_yvec1,_xvec2,_yvec2);
							_vec2_mag *= map_generator.wind_references_magnitude_multipler[_ref_lookup] * _dotp;
							
							var _xvec_gain = _tile.wind[2] + _xvec2 * _vec2_mag;
							var _yvec_gain = _tile.wind[3] + _yvec2 * _vec2_mag;
							
							_tile.wind[2] = _xvec_gain;
							_tile.wind[3] = _yvec_gain;
						}
					
				}		
		}
		
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					var _xvec1 = _tile.wind[0];
					var _yvec1 = _tile.wind[1];
					
					for(var _ref_lookup = 0; _ref_lookup < array_length(map_generator.legal_terrains_ground); _ref_lookup++)
						{
							var _name_found = map_generator.legal_terrains_ground[_ref_lookup];
							if _tile.base_name == _name_found	{break;};
						}
					switch(map_generator.wind_references_direction_mode)
						{
							case "drop":
								_tile.wind[2] = 0;
								_tile.wind[3] = 0;
								break;
							case "split":
								_tile.wind[0] += _tile.wind[2]/2;
								_tile.wind[1] += _tile.wind[3]/2;
								_tile.wind[2] = 0;
								_tile.wind[3] = 0;
								break;
							case "forward":
								_tile.wind[0] += _tile.wind[2];
								_tile.wind[1] += _tile.wind[3];
								_tile.wind[2] = 0;
								_tile.wind[3] = 0;
								break;
						}
				}
		}
		
	return(_map);
}