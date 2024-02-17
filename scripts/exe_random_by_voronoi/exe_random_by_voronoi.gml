function exe_random_by_voronoi(_height_map,_temp_voronoi_list,_mapheight_mean)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _return_nearest = return_nearest_wrap_voronoi(_x1,_y1,_temp_voronoi_list);
					
					
					var _switch_mod = _return_nearest mod 4;
					switch(_switch_mod)
						{
							case 0:
								var _value_here = _height_map[_x1][_y1];
								_value_here += irandom(map_generator.noise_level);
								_height_map[_x1][_y1] = _value_here;
								break;
							case 1:
								var _value_here = _height_map[_x1][_y1];
								_value_here -= irandom(map_generator.noise_level);
								_height_map[_x1][_y1] = _value_here;
								break;
							case 2:
								var _value_here = _height_map[_x1][_y1];
								 if _value_here < _mapheight_mean
									{
										_value_here += irandom(map_generator.noise_level);
										_height_map[_x1][_y1] = _value_here;
									}
								break;
							case 3:
								var _value_here = _height_map[_x1][_y1];
								 if _value_here > _mapheight_mean
									{
										_value_here -= irandom(map_generator.noise_level);
										_height_map[_x1][_y1] = _value_here;
									}
								break;
						}
					
				}
		}
		
	return(_height_map);
}