function exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler)
{
	var _same_neighbours = [[0,0,0],[0,0,0],[0,0,0]];

	var _ax = -1; var _ay = -1;
	for(var _xx = _x1 -1; _xx < _x1 +2; _xx++)
		{
			_ax++; if _ax > 2	{_ax =0;};
			for(var _yy = _y1 -1; _yy < _y1 +2; _yy++)
				{
					_ay++; if _ay > 2	{_ay =0;};
					
					if _same_neighbours[_ax][_ay] < 1
						{
							var _x2 = _xx;	var _y2 = _yy;
							if _x2 < 0						{_x2 += map_generator.map_x;};
							if _x2 > map_generator.map_x-1	{_x2 -= map_generator.map_x;};
							if _y2 < 0						{_y2 += map_generator.map_y;};
							if _y2 > map_generator.map_y-1	{_y2 -= map_generator.map_y;};
					
							var _neighbour = _map[_x2][_y2];
							if  _neighbour.base_name == _local_struct.base_name
								{
									array_set(_same_neighbours[_ax],_ay,_rsn_multipler[_ax][_ay]*1.5);
								}
							if  _neighbour.zref > _local_struct.zref
								{
									array_set(_same_neighbours[_ax],_ay,_rsn_multipler[_ax][_ay]);
								}
						}	
				}
		}
	return(_same_neighbours);
}