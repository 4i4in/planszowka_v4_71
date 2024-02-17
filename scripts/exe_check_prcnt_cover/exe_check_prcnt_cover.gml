function exe_check_prcnt_cover(_map)
{
	var _area = array_length(_map) *	array_length(_map[0]);
	var _terrain_cover = [];
	for(var _ii = 0; _ii < array_length(map_generator.legal_terrains_ground); _ii++)
		{
			var _name = variable_clone(map_generator.legal_terrains_ground[_ii]);
			array_push(_terrain_cover,_name,0);
		}
	
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _name = _map[_x1][_y1][$ "base_name"];
					for(var _ii = 0; _ii < array_length(_terrain_cover); _ii+=2)
						{
							if _terrain_cover[_ii] == _name
								{
									array_set(_terrain_cover,_ii+1,_terrain_cover[_ii+1]+1);
								}
						}
				}
		}
	var _sum = 0;
	for(var _ii = 1; _ii < array_length(_terrain_cover); _ii+=2)
		{
			_terrain_cover[_ii] /= _area;
			_sum += _terrain_cover[_ii];
		}
	return(_terrain_cover);
}