function exe_add_depth_surfaces(_pipeline)
{
	matrix_set(matrix_world, matrix_build_identity());
	
	shader_set(shd_sum_surf_01);
	surface_set_target_ext(0, depth_surface3);
	shader_set_uniform_f(	shader_get_uniform(shd_sum_surf_01, "dgw"), 1.0/dgw);
	shader_set_uniform_f(	shader_get_uniform(shd_sum_surf_01, "dgh"), 1.0/dgh);
	texture_set_stage(	shader_get_sampler_index(shd_sum_surf_01,"depth_surface"),	surface_get_texture(depth_surface));
	texture_set_stage(	shader_get_sampler_index(shd_sum_surf_01,"second_surface"),	surface_get_texture(depth_surface2));
	matrix_set(matrix_world, matrix_build(0, 0, 1, 0, 0, 0, 1, 1, 1));
	switch(_pipeline)
		{
			case "mini":	vertex_submit(vbuff_320x320, pr_trianglelist, -1);	break;
			case "normal":	vertex_submit(vbuff_dgw_dgh, pr_trianglelist, -1);	break;
		}
	
	surface_reset_target();
	shader_reset();
	matrix_set(matrix_world, matrix_build_identity());
}