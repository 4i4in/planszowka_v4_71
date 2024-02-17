function draw_temporary_surface02(_target_surface,_edge_map,_temp_voronoi_list)
{
	if surface_exists(_target_surface)	{surface_free(_target_surface);};
	_target_surface = surface_create(map_generator.map_x,map_generator.map_y);
	surface_set_target(_target_surface);
	draw_clear_alpha(0,0);
	
	for(var _ii = 0; _ii < array_length(_edge_map); _ii++)
		{
			var _ex = _edge_map[_ii][0];
			var _ey = _edge_map[_ii][1];
			var _ec = _edge_map[_ii][2];
			draw_point_color(_ex,_ey,_ec);
		}
		
	for(var _ii = 0; _ii < array_length(_temp_voronoi_list); _ii++)
		{
			var _vx = _temp_voronoi_list[_ii][0];
			var _vy = _temp_voronoi_list[_ii][1];
			draw_point_color(_vx,_vy,c_white);
		}	
		
	surface_reset_target();
	
	return(_target_surface);
}