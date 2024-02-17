function exe_break_map_by_voronoi(_temporary_value_map,_temp_voronoi_list,_find)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _return_nearest = return_nearest_wrap_voronoi(_x1,_y1,_temp_voronoi_list);
					
					_temporary_value_map[_x1][_y1] = variable_clone(_temp_voronoi_list[_return_nearest][_find]);
				}
		}
		
	return(_temporary_value_map);
}