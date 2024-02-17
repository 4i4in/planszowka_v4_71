function exe_draw_outlines_ground_GLSL_ES_ver2(_pipeline)
{
	if control_array.draw_terrain_markers > 0
		{
			shader_set(shd_outline02);
			surface_set_target_ext(0, outline_surface);
			shader_set_uniform_f(	shader_get_uniform(shd_outline02, "dgw"), 1.0/dgw);
			shader_set_uniform_f(	shader_get_uniform(shd_outline02, "dgh"), 1.0/dgh);
			texture_set_stage(	shader_get_sampler_index(shd_outline02,"features_surface")	,surface_get_texture(features_surface));
			matrix_set(matrix_world, matrix_build(0, 0, 1, 0, 0, 0, 1, 1, 1));
			switch(_pipeline)
				{
					case "mini":	vertex_submit(vbuff_320x320, pr_trianglelist, -1);	break;
					case "normal":	vertex_submit(vbuff_dgw_dgh, pr_trianglelist, -1);	break;
				}	
			
		}
	surface_reset_target();
	shader_reset();
}