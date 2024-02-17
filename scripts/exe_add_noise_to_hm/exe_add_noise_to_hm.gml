function exe_add_noise_to_hm(_height_map,_mapheight_min,_mapheight_max)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _value_here = _height_map[_x1][_y1];
					_value_here -= ceil(map_generator.noise_level/2) + irandom(map_generator.noise_level);
					if _value_here < _mapheight_min	{	_value_here = _mapheight_min;	};
					if _value_here > _mapheight_max	{	_value_here = _mapheight_max;	};
					_height_map[_x1][_y1] = _value_here;
				}		
		}

	return(_height_map);
}