function exe_add_climate_to(_map)
{
	var _north_pole = [[0,0],[map_generator.map_x-1,0],[0,map_generator.map_y-1],[map_generator.map_x-1,map_generator.map_y-1]];
	var _south_pole = [floor(map_generator.map_x/2),floor(map_generator.map_y/2)];
	
	var _start_pd = map_generator.map_x * map_generator.map_y;
	var _proportion = point_distance(0,0,_south_pole[0],_south_pole[1]);
	
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _local_struct = _map[_x1][_y1];
					_local_struct.climate = [];
					var _climate_array = [];
					
					var _shortest_pd = _start_pd;
					for(var _ii = 0; _ii < array_length(_north_pole); _ii++)
						{
							var _check_x = _north_pole[_ii][0];
							var _check_y = _north_pole[_ii][1];
							var _check_pd = point_distance(_x1,_y1,_check_x,_check_y);
							if _check_pd < _shortest_pd	{_shortest_pd = _check_pd;};
						}
					var _check_pd = point_distance(_x1,_y1,_south_pole[0],_south_pole[1]);
					if _check_pd < _shortest_pd	{_shortest_pd = _check_pd;};
					_shortest_pd /= _proportion;
					_shortest_pd = sqrt(_shortest_pd);
					//_shortest_pd = floor(_shortest_pd);
					array_push(_climate_array,_shortest_pd,0.,0.);
					
					_local_struct.climate = _climate_array;
				}
		}
	
	//cold influx poles
	var _cold_value = 50.;
	var _cold_inflow_points =	[
									[_north_pole[0][0],_north_pole[0][1],_cold_value],
									[_south_pole[0],_south_pole[1],_cold_value]
								];
	for(var _ii = 0; _ii < array_length(_cold_inflow_points); _ii++)
		{
			var _this_x = _cold_inflow_points[_ii][0];
			var _this_y = _cold_inflow_points[_ii][1];
			var _cvalue = _cold_inflow_points[_ii][2];
			
			_map[_this_x][_this_y][$ "climate"][1] = _cvalue;
		}
	//cold influx mountains	
	var _cold_value = 0.5;
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					if _map[_x1][_y1][$ "base_name"] == "peaks"
						{
							_map[_x1][_y1][$ "climate"][1] += _cold_value;
						}
				}
		}
		
	var _continue = 1;
	var _repetition = 0;
	while(_continue > 0)
		{
			var _sum_found = 0;
			for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
				{
					for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
						{
							var _cvalue_found = _map[_x1][_y1][$ "climate"][1];
							if _cvalue_found > 0	
								{
									_sum_found += _cvalue_found;
									var _cpart = _cvalue_found/8;
									_map[_x1][_y1][$ "climate"][1] = 0;
									for(var _dir = 0; _dir < 8; _dir++)
										{
											exe_move_cold_climate(_map,_x1,_y1,_dir,_cpart);
										}
								};
						}
				}
			_continue = _sum_found;
			_repetition++;
		}
	return(_map);
}