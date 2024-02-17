function exe_check_prcnt_under(_map, _value)
{
	var _area = array_length(_map) *	array_length(_map[0]);
	var _grid_underwater = 0;

	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					if 	!(_map[_x1][_y1] >  _value)
						{
							_grid_underwater++;
						}
				}
		}
	var _prcnt_under = _grid_underwater/_area;
	return(_prcnt_under);
}