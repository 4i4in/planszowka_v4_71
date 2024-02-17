function exe_flat_humidity_0_1(_map)
{
	var _humidity_raw_high = 0.1
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _local_humidity = _map[_x1][_y1][$ "climate"][1];
					if _local_humidity > _humidity_raw_high	{_humidity_raw_high = _local_humidity};
				}		
		}
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _local_humidity = _map[_x1][_y1][$ "climate"][1];
					if _local_humidity < 0
						{
							_map[_x1][_y1][$ "climate"][1] = 0.;
						}
					else if _local_humidity > 1
						{
							_local_humidity /= _humidity_raw_high;
							_map[_x1][_y1][$ "climate"][1] = _local_humidity;
						}
				}		
		}
	return(_map);
}