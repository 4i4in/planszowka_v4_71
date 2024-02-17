function exe_stable_climate_by_water(_map,_iterations)
{
	var _avg_temp = control_array.climate[2];
	for(var _kk = 0; _kk < _iterations; _kk++)
		{
			for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
				{
					for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
						{
							if _map[_x1][_y1][$ "base_name"] == "ocean_rifts"
								{
									var _local_temp = _map[_x1][_y1][$ "climate"][0];
									if _local_temp > _avg_temp
										{
											var _new_temp = lerp(_local_temp,_avg_temp,0.75);
											_map[_x1][_y1][$ "climate"][0] = _new_temp;
										}
								}
							if _map[_x1][_y1][$ "base_name"] == "deep_water"
								{
									var _local_temp = _map[_x1][_y1][$ "climate"][0];
									if _local_temp > _avg_temp
										{
											var _new_temp = lerp(_local_temp,_avg_temp,0.5);
											_map[_x1][_y1][$ "climate"][0] = _new_temp;
										}
								}
							if _map[_x1][_y1][$ "base_name"] == "shallow_water"
								{
									var _local_temp = _map[_x1][_y1][$ "climate"][0];
									if _local_temp > _avg_temp
										{
											var _new_temp = lerp(_local_temp,_avg_temp,0.25);
											_map[_x1][_y1][$ "climate"][0] = _new_temp;
										}
								}
						}		
				}
		}
	return(_map);
}