function exe_draw_tile_base_GLSL_ES_ver2(_xref,_yref,_zref,_base_tex)
{
	shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "fake_z"),_zref);
	texture_set_stage(shader_get_sampler_index(shd_map_base_pass1,"alpha_texture"),tex_struct._tile_base_txt);
	texture_set_stage(shader_get_sampler_index(shd_map_base_pass1,"color_texture"),_base_tex);

	matrix_set(matrix_world, matrix_build(_xref, _yref, _zref, 0, 0, 0, 1, 1, 1));
	vertex_submit(vbuff_tile, pr_trianglelist, -1);	
}