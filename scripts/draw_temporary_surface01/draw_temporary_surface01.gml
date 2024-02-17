function draw_temporary_surface01(_target_surface,_temporary_value_map)
{
	if surface_exists(_target_surface)	{surface_free(_target_surface);};
	_target_surface = surface_create(map_generator.map_x,map_generator.map_y);
	surface_set_target(_target_surface);
	//draw_clear_alpha(0,0);
	draw_clear(c_black);
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					draw_point_color(_x1,_y1,_temporary_value_map[_x1][_y1]);
				}
		}
		
	surface_reset_target();
	
	return(_target_surface);
}