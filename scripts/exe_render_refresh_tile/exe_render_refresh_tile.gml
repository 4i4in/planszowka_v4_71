function exe_render_refresh_tile(_xx1,_yy1,_map_target_level,_this_player)
{
	if _xx1 < 0						{_xx1 += control_array.map_x;};
	if _xx1 > control_array.map_x-1	{_xx1 -= control_array.map_x;};
	if _yy1 < 0						{_yy1 += control_array.map_y;};
	if _yy1 > control_array.map_y-1	{_yy1 -= control_array.map_y;};
					
	exe_hijack_drawing_pipeline(1);
	
	exe_free_drawing_pipeline();
	
	var _srf_size = srf_mini; //magic number 5 of tiles 5x5 with _xx1,_yy1 in center for render
	if !surface_exists(temporary_render)	{temporary_render = surface_create(_srf_size,_srf_size);};
	var _force_resize = 0;
	if surface_get_height(temporary_render) !=	_srf_size	{_force_resize = 1;};
	if surface_get_width(temporary_render) !=	_srf_size	{_force_resize = 1;};
	if _force_resize > 0	{	surface_resize(temporary_render,_srf_size,_srf_size);	};
	surface_set_target(temporary_render); draw_clear(c_black); surface_reset_target();
	
	control_array.draw_tile_extension = 1;
	control_array.draw_terrain_markers = 1;
	control_array.draw_terrain_cover = 1;
	control_array.draw_tile_climate = 0;
	control_array.draw_grid = 0;
	control_array.dev_show_depth_surface = 0;
	
	control_array.camx = (_xx1-2) * control_array.tile_size;//magic number -2 is camera 2 tile left up from given to get render for all around given _xx1,_yy1 
	control_array.camy = (_yy1-2) * control_array.tile_size;
	if control_array.camx < 0	{	control_array.camx += control_array.map_x * control_array.tile_size;};
	if control_array.camy < 0	{	control_array.camy += control_array.map_y * control_array.tile_size;};
	
	control_array.map_current_name_level = variable_clone(_map_target_level);
	force_main_map_redraw = 1;
	exe_map_drawing_loop_GLSL_ES_ver2("mini");
	exe_draw_main_surface_GLSL_ES_ver4("mini");
	surface_copy(temporary_render,0,0,main_surface);
	
	var _xcount = -2; var _ycount = -2;
	for(var _xx = _xx1 -1; _xx < _xx1 +2; _xx++)
		{
			_xcount++;
			for(var _yy = _yy1 -1; _yy < _yy1 +2; _yy++)
				{
					_ycount++;
					if _ycount > 1	{_ycount = -1;};
					
					var _xx2 = _xx; var _yy2 = _yy;
					if _xx2 < 0						{_xx2 += control_array.map_x;};
					if _xx2 > control_array.map_x-1	{_xx2 -= control_array.map_x;};
					if _yy2 < 0						{_yy2 += control_array.map_y;};
					if _yy2 > control_array.map_y-1	{_yy2 -= control_array.map_y;};
					
					var _tile = game_map[$ control_array.map_current_name_level][_xx2][_yy2];
					if _tile.render_pic.base_pic[_this_player] != no_render_tile
						{
							sprite_delete(_tile.render_pic.base_pic[_this_player]);
						}
					_tile.render_pic.base_pic[_this_player] = sprite_create_from_surface(temporary_render,
																	control_array.tile_size *2 + control_array.tile_size * _xcount,
																	control_array.tile_size *2 + control_array.tile_size * _ycount,
																	control_array.tile_size,control_array.tile_size,
																	false,false,0,0);
				}
		}
	
	
	exe_free_drawing_pipeline();
	
	exe_hijack_drawing_pipeline(-1);
	force_main_map_redraw = 1;
}