function exe_draw_terrain_items_GLSL_ES_ver2(_tile,_xref,_yref)
{
	shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "fake_z"),_tile.zref);
	for(var _ii = 0; _ii < array_length(_tile.terrain_items); _ii++)
		{
			var _nx = _tile.terrain_items[_ii][0] * icon_scale + _xref;
			var _ny = _tile.terrain_items[_ii][1] * icon_scale + _yref;
			var _alpha = _tile.terrain_items[_ii][2];
			var _lines = _tile.terrain_items[_ii][3];
			var _scale = _tile.terrain_items[_ii][4];
			var _vbuff = _tile.terrain_items[_ii][5];
			
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"alpha_texture"),_alpha);
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"lines_texture"),_lines);
			
			//matrix_set(matrix_world, matrix_build(_nx, _ny, _tile.zref, 0, 0, 0, _scale, _scale, 1));
			matrix_set(matrix_world, matrix_build(_nx, _ny, height_base, 0, 0, 0, _scale, _scale, 1));
			vertex_submit(_vbuff, pr_trianglelist, -1);	
		}
}