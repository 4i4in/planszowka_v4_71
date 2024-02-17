function draw_temporary_surface04(_target_surface,_height_map,_mapheight_mean)
{
	if surface_exists(_target_surface)	{surface_free(_target_surface);};
		_target_surface = surface_create(map_generator.map_x,map_generator.map_y);
		surface_set_target(_target_surface);
		draw_clear_alpha(0,0);
	
		for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
			{
				for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
					{
						var _value_here = _height_map[_x1][_y1];
						if  _value_here > 0
							{
								if _value_here > _mapheight_mean
									{
										draw_point_color(_x1,_y1,make_colour_rgb(	_value_here,_value_here,_value_here	)	);
									}
								else
									{
										draw_point_color(_x1,_y1,make_colour_rgb(	0,0,_value_here	)	);
									}
							}
						else
							{
								draw_point_color(_x1,_y1,make_colour_rgb(160,96,0));
							}
					}
			}
		
		
	surface_reset_target();
	
	return(_target_surface);
}