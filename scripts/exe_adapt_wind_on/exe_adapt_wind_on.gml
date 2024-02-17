function exe_adapt_wind_on(_map)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _vec_dir = _map[_x1][_y1][$ "wind"][0];
					var _vec_magnitude = _map[_x1][_y1][$ "wind"][1];
					var _xvec = lengthdir_x(_vec_magnitude, _vec_dir);
					var _yvec = lengthdir_y(_vec_magnitude, _vec_dir);
					_map[_x1][_y1][$ "wind"][0] = _xvec;
					_map[_x1][_y1][$ "wind"][1] = _yvec;
				}		
		}

	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _xvec = _map[_x1][_y1][$ "wind"][0];
					var _yvec = _map[_x1][_y1][$ "wind"][1];
					
					for(var _dir = 0; _dir < 8; _dir++)
						{
							_xvec +=	exe_return_wind_vec(_map,_x1,_y1,_dir,0);
							_yvec +=	exe_return_wind_vec(_map,_x1,_y1,_dir,1);
						}
					_xvec /= 9;
					_yvec /= 9;
					
					_map[_x1][_y1][$ "wind"][2] = _xvec;
					_map[_x1][_y1][$ "wind"][3] = _yvec;
				}		
		}

	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					_map[_x1][_y1][$ "wind"][0] = variable_clone(_map[_x1][_y1][$ "wind"][2]);
					_map[_x1][_y1][$ "wind"][1] = variable_clone(_map[_x1][_y1][$ "wind"][3]);
					_map[_x1][_y1][$ "wind"][2] = 0.;
					_map[_x1][_y1][$ "wind"][3] = 0.;
				}
		}
		
	return(_map);
}