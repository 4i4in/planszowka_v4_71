function exe_lerp_humidity(_map)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _avrg_around = 0;
					for(var _dir = 0; _dir < 8; _dir++)
						{
							_avrg_around += exe_return_humidity1(_map,_x1,_y1,_dir);
						}
					_avrg_around /=8;
					var _local_wind = _map[_x1][_y1][$ "wind"][1];
					var _local_humidity = _map[_x1][_y1][$ "climate"][1];
					
					var _new_humidity = lerp(_local_humidity,_avrg_around,1/_local_wind);
					_map[_x1][_y1][$ "climate"][2] = _new_humidity;
				}		
		}
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _local_humidity = _map[_x1][_y1][$ "climate"][1];
					var _new_humidity = _map[_x1][_y1][$ "climate"][2];
					_map[_x1][_y1][$ "climate"][1] = (_local_humidity + _new_humidity)/2;
					_map[_x1][_y1][$ "climate"][2] = 0;
				}
		}
	return(_map);
}