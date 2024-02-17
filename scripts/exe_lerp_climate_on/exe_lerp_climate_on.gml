function exe_lerp_climate_on(_map,_iterations)
{
	for(var _kk = 0; _kk < _iterations; _kk++)
		{
			for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
				{
					for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
						{
							var _avrg_around = 0;
							for(var _dir = 0; _dir < 8; _dir++)
								{
									_avrg_around += exe_return_climate0(_map,_x1,_y1,_dir);
								}
							_avrg_around /=8;
							if _map[_x1][_y1][$ "climate"][0] > _avrg_around
								{
									_map[_x1][_y1][$ "climate"][2] = _avrg_around;
								}
						}		
				}
			for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
				{
					for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
						{
							if _map[_x1][_y1][$ "climate"][2] > 0
								{
									_map[_x1][_y1][$ "climate"][0] = _map[_x1][_y1][$ "climate"][2];
									if _map[_x1][_y1][$ "base_name"] == "magma"	
										{
											_map[_x1][_y1][$ "climate"][0] = 1.;
										};
								}
						}
				}
		}
	return(_map);
}