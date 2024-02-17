function exe_describe_ground(_map,_map_level)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					_tile =  exe_predescribe_tile(_tile,_map_level);
				}		
		}
		
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					
					_tile =  exe_detail_describe_tile(_tile,_map_level);
				}
		}
					
	return(_map);
}