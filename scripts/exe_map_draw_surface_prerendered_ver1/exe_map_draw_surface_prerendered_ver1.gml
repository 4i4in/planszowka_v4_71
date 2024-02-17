function exe_map_draw_surface_prerendered_ver1()
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
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
								
							case "ground":	
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
								
							case "underground":
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
								
							case "underdark":
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
								
							case "underwater":
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
								
							case "water_deepths":
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
								
							case "water_abbys":
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
								
							case "fairyland":
								draw_sprite_ext(_tile.render_pic.base_pic[control_array.current_player],0,_xref,_yref,1,1,0,-1,1.);
								break;
						}
				}
		}
	
	surface_reset_target();
}