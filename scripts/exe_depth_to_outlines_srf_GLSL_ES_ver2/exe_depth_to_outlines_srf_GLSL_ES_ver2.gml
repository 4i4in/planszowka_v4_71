function exe_depth_to_outlines_srf_GLSL_ES_ver2(_pipeline)
{
	switch(control_array.map_current_name_level)
		{
			case "air":	
				break;
								
			case "ground":	exe_draw_outlines_ground_GLSL_ES_ver2(_pipeline);
				break;
								
			case "underground":	exe_draw_outlines_underground_GLSL_ES_ver2(_pipeline);
				break;
								
			case "underdark":	exe_draw_outlines_underground_GLSL_ES_ver2(_pipeline);//TBD
				break;
								
			case "underwater":	exe_draw_outlines_underground_GLSL_ES_ver2(_pipeline);//TBD
				break;
								
			case "water_deepths":	exe_draw_outlines_underground_GLSL_ES_ver2(_pipeline);//TBD
				break;
								
			case "water_abbys":	exe_draw_outlines_underground_GLSL_ES_ver2(_pipeline);//TBD
				break;
								
			case "fairyland":	exe_draw_outlines_underground_GLSL_ES_ver2(_pipeline);//TBD
				break;
		}
	matrix_set(matrix_world, matrix_build_identity());
	
}