function exe_regenerate_minimap_underground()
{
	//checking ground minimap surface for gameplay display
	if surface_exists(underground_minimap_moved)
		{
			var _free_me = 0;
			if surface_get_width(underground_minimap_moved)	!=	control_array.map_x	{_free_me = 1;};
			if surface_get_height(underground_minimap_moved)	!=	control_array.map_y	{_free_me = 1;};
			if _free_me > 0	{surface_free(underground_minimap_moved);};
		};

	if surface_exists(underground_minimap)	{surface_free(underground_minimap);};
	underground_minimap = surface_create(control_array.map_x,control_array.map_y);
	
	surface_set_target(underground_minimap);
	draw_clear_alpha(0,0);
	
	for(var _x1 = 0; _x1 < control_array.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < control_array.map_y; _y1++)
				{
					var _struct_here = game_map.underground[_x1][_y1];
					draw_point_color(_x1,_y1,_struct_here.base_color);
				}
		};	
	surface_reset_target();
}