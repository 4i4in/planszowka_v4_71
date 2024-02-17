function return_nearest_wrap_voronoi(_x1,_y1,_temp_voronoi_list)
{
	var _nearest = -1;
	
	var _shortest_distance = map_generator.map_x + map_generator.map_y;
	for(var _vn = 0; _vn < array_length(_temp_voronoi_list); _vn++)
		{
			var _vx1 = _temp_voronoi_list[_vn][0];
			var _vy1 = _temp_voronoi_list[_vn][1];
			
			var _sd_found = 0;
			
			var _this_dist = point_distance(_x1,_y1,_vx1,_vy1);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1-map_generator.map_x,_vy1);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1+map_generator.map_x,_vy1);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1-map_generator.map_x,_vy1-map_generator.map_y);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1+map_generator.map_x,_vy1-map_generator.map_y);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1-map_generator.map_x,_vy1+map_generator.map_y);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1+map_generator.map_x,_vy1+map_generator.map_y);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1,_vy1-map_generator.map_y);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			var _this_dist = point_distance(_x1,_y1,_vx1,_vy1+map_generator.map_y);
			if _this_dist < _shortest_distance	{_sd_found = 1;	_shortest_distance = _this_dist;};
			
			if _sd_found > 0	{	_nearest = _vn;	};
		}
		
	return(_nearest);
}