function exe_map_drawing_loop_GLSL_ES_ver2(_pipeline)
{
	if force_main_map_redraw > 0	&& array_length(game_map[$ control_array.map_current_name_level]) > 0
		{
			exe_calculate_cam_drawing_range();
			
			exe_map_draw_surface_GLSL_ES_ver2(1);
			exe_map_draw_surface_GLSL_ES_ver2(2);
			
			exe_add_depth_surfaces(_pipeline);
			
			if control_array.draw_tile_climate			{exe_map_draw_surface_GLSL_ES_ver2(3);};
			if control_array.draw_terrain_cover			{exe_map_draw_surface_GLSL_ES_ver2(4);};
			
			matrix_set(matrix_world, matrix_build_identity());
			
			exe_depth_to_outlines_srf_GLSL_ES_ver2(_pipeline);
			
			force_main_map_redraw = 0;
		}
}