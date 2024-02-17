function exe_voronoi_map_gen_01()
{
	var _temporary_value_map = array_create(map_generator.map_x);
	var _naming_map = array_create(map_generator.map_x);
	for (var _ii = array_length(_temporary_value_map)-1; _ii > -1; _ii--) 
		{
		    _temporary_value_map[_ii] = array_create(map_generator.map_y);
			_naming_map[_ii] = array_create(map_generator.map_y);
		}
	
	var _temp_voronoi_list = exe_spawn_voronoi_list(1);
	_temporary_value_map = exe_break_map_by_voronoi(_temporary_value_map,_temp_voronoi_list,2);
	_naming_map = exe_break_map_by_voronoi(_naming_map,_temp_voronoi_list,6);
	map_generator.current_naming_array = variable_clone(_naming_map);
	
	
	clipboard_set_text(_naming_map);
	
	var _edge_map = exe_detect_edges(_temporary_value_map);
	var _mark_tectonics = exe_break_map_by_tectonics(_temporary_value_map,_temp_voronoi_list);
	_mark_tectonics = exe_path_tectonics(_mark_tectonics);
	
	var _mapheight_min = exe_check_sqr_array(_mark_tectonics,"min");
	var _mapheight_max = exe_check_sqr_array(_mark_tectonics,"max");
	var _mapheight_mean = exe_check_sqr_array(_mark_tectonics,"mean");
	
	var _height_map = variable_clone(_mark_tectonics);
	_height_map = exe_edges_to_hm(_height_map,_edge_map);
	_height_map = exe_add_noise_to_hm(_height_map,_mapheight_min,_mapheight_max);
	_height_map = exe_add_asteroids_to_hm(_height_map);

	_height_map = exe_normalize_hd(_height_map,_mapheight_min,_mapheight_max);
	
	for(var _ii = 0; _ii < map_generator.noise_level; _ii++)
		{
			var _temp_voronoi_list = exe_spawn_voronoi_list(0);
			_temporary_value_map = exe_break_map_by_voronoi(_temporary_value_map,_temp_voronoi_list,2);
			_height_map = exe_random_by_voronoi(_height_map,_temp_voronoi_list,_mapheight_mean);
		}
		
	for(var _ii = 0; _ii < map_generator.noise_level; _ii++)
		{
			var _temp_voronoi_list = exe_spawn_voronoi_list(0);
			_temporary_value_map = exe_break_map_by_voronoi(_temporary_value_map,_temp_voronoi_list,2);
			_edge_map = exe_detect_edges(_temporary_value_map);
			_height_map = exe_press_edges_on_land(_height_map,_edge_map,_mapheight_mean);
		}
		
	for(var _ii = 0; _ii < map_generator.noise_level; _ii++)
		{
			var _temp_voronoi_list = exe_spawn_voronoi_list(0);
			_temporary_value_map = exe_break_map_by_voronoi(_temporary_value_map,_temp_voronoi_list,2);
			_edge_map = exe_detect_edges(_temporary_value_map);
			_height_map = exe_extrude_edges_underwater(_height_map,_edge_map,_mapheight_mean);
		}
	
	_height_map = exe_normalize_hd(_height_map,_mapheight_min,_mapheight_max);
	
	height_map = draw_temporary_surface04(height_map,_height_map,_mapheight_mean);
	
	map_generator.height_map = _height_map;
	
	map_generator.mapheight_min = _mapheight_min;
	map_generator.mapheight_max = _mapheight_max;
	map_generator.mapheight_mean = _mapheight_mean;
}