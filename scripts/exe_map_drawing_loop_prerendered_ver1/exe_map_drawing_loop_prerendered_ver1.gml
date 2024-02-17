function exe_map_drawing_loop_prerendered_ver1()
{
	if force_main_map_redraw > 0	&& array_length(game_map[$ control_array.map_current_name_level]) > 0
		{
			exe_calculate_cam_drawing_range();
			
			exe_map_draw_surface_prerendered_ver1();
			
			force_main_map_redraw = 0;
		}
}