function exe_map_drawing_tile_xy_pos()
{
	if click_restricted_show < 1	{exit;};
	
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}

	surface_set_target(main_surface);
	
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

					draw_set_halign(fa_left);
					draw_set_valign(fa_top);
					draw_set_font(fnt_arial_outline);
					var _string =	"_x : " + string(_xx1) + "\n_y : " + string(_yy1);
					draw_text(_xref,_yref,_string)
				}
		}
	
	surface_reset_target();
}