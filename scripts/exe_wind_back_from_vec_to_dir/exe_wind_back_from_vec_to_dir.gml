function exe_wind_back_from_vec_to_dir(_map)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _xvec = _map[_x1][_y1][$ "wind"][0];
					var _yvec = _map[_x1][_y1][$ "wind"][1];
					
					var _dir = point_direction(0,0,_xvec,_yvec);
					var _mag = point_distance(0,0,_xvec,_yvec);
					
					_map[_x1][_y1][$ "wind"][0] = _dir;
					_map[_x1][_y1][$ "wind"][1] = _mag;
					
					_map[_x1][_y1][$ "wind"][2] = 0;
					_map[_x1][_y1][$ "wind"][3] = 0;
				}		
		}
	return(_map);
}