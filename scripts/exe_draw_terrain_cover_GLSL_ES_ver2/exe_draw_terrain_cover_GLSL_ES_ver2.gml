function exe_draw_terrain_cover_GLSL_ES_ver2(_tile,_xref,_yref)
{
	for(var _ii = 0; _ii < array_length(_tile.terrain_cover); _ii++)
		{
			var _nx = _tile.terrain_cover[_ii][0] * icon_scale + _xref;
			var _ny = _tile.terrain_cover[_ii][1] * icon_scale + _yref;
			var _alpha = _tile.terrain_cover[_ii][2];
			var _lines = _tile.terrain_cover[_ii][3];
			var _scale = _tile.terrain_cover[_ii][4];
			var _vbuff = _tile.terrain_cover[_ii][5];
			var _zrot = _tile.terrain_cover[_ii][6];
			
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass4, "fake_z"),_tile.zref);
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass4,"alpha_texture"),_alpha);
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass4,"lines_texture"),_lines);
			
			matrix_set(matrix_world, matrix_build(_nx, _ny, _tile.zref, 0, 0, _zrot, _scale, _scale, 1));
			vertex_submit(_vbuff, pr_trianglelist, -1);	
		}
}