function exe_calculate_cam_drawing_range()
{
	control_array.cam_x_range = ceil(dgw/control_array.tile_size)+1;
	control_array.cam_y_range = ceil(dgh/control_array.tile_size)+1;
			
	control_array.map_cam_x_from = floor(control_array.camx/control_array.tile_size);
	control_array.map_cam_y_from = floor(control_array.camy/control_array.tile_size);
			
	if control_array.map_cam_x_from < 0						{control_array.map_cam_x_from += control_array.map_x;};
	if control_array.map_cam_x_from > control_array.map_x-1	{control_array.map_cam_x_from -= control_array.map_x;};
	if control_array.map_cam_y_from < 0						{control_array.map_cam_y_from += control_array.map_y;};
	if control_array.map_cam_y_from > control_array.map_y-1	{control_array.map_cam_y_from -= control_array.map_y;};
			
	control_array.map_cam_x_to = control_array.map_cam_x_from + control_array.cam_x_range;
	control_array.map_cam_y_to = control_array.map_cam_y_from + control_array.cam_y_range;
}