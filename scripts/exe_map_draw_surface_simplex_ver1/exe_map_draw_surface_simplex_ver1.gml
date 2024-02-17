function exe_map_draw_surface_simplex_ver1()
{
	if !surface_exists(map_surface)			{	map_surface = surface_create(dgw,dgh);	};
	surface_set_target(map_surface);
	draw_clear(c_black);
	
	for(var _x1 = control_array.map_cam_x_from; _x1 < control_array.map_cam_x_to; _x1++)
		{
			for(var _y1 = control_array.map_cam_y_from; _y1 < control_array.map_cam_y_to; _y1++)
				{
					var _xx1 = _x1;	var _yy1 = _y1;
					
					var _xref = _xx1 * control_array.tile_size - control_array.camx;
					var _yref = _yy1 * control_array.tile_size - control_array.camy;
					
					if _xx1 < 0						{_xx1 += control_array.map_x;};
					if _xx1 > control_array.map_x-1	{_xx1 -= control_array.map_x;};
					if _yy1 < 0						{_yy1 += control_array.map_y;};
					if _yy1 > control_array.map_y-1	{_yy1 -= control_array.map_y;};

					var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
					
					switch(control_array.map_current_name_level)
						{
							case "air":	
								break;
								
							case "ground":	exe_draw_tiles_ground_simplex_ver1(_xx1,_yy1,_tile,_xref,_yref);
								break;
								
							case "underground":	exe_draw_tiles_underground_GLSL_ES_ver1(_xx1,_yy1,_tile,_xref,_yref);
								break;
								
							case "underdark":	exe_draw_tiles_underdark_GLSL_ES_ver1(_xx1,_yy1,_tile,_xref,_yref);
								break;
								
							case "underwater":	exe_draw_tiles_underwater_GLSL_ES_ver1(_xx1,_yy1,_tile,_xref,_yref);
								break;
								
							case "water_deepths":	exe_draw_tiles_water_deepths_GLSL_ES_ver1(_xx1,_yy1,_tile,_xref,_yref);
								break;
								
							case "water_abbys":	exe_draw_tiles_water_abbys_GLSL_ES_ver1(_xx1,_yy1,_tile,_xref,_yref);
								break;
								
							case "fairyland":
								break;
						}
				}
		}
	
	surface_reset_target();
}