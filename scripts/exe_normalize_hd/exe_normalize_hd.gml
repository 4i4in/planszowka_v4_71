function exe_normalize_hd(_height_map,_mapheight_min,_mapheight_max)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _value_here = _height_map[_x1][_y1];
					if _value_here < _mapheight_min+1
						{
							_value_here = _mapheight_min + irandom(map_generator.noise_level);
						}
					if _value_here > _mapheight_max-1
						{
							_value_here = _mapheight_max - irandom(map_generator.noise_level);
						}
					_height_map[_x1][_y1] = _value_here;
				}		
		}
	return(_height_map);
}