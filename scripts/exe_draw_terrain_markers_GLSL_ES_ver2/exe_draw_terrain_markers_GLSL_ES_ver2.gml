function exe_draw_terrain_markers_GLSL_ES_ver2(_tile,_xref,_yref,_use_rot)
{
	shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "fake_z"),_tile.zref);
	for(var _ii = 0; _ii < array_length(_tile.terrain_markers); _ii++)
		{
			var _nx = _tile.terrain_markers[_ii][0] * icon_scale + _xref;
			var _ny = _tile.terrain_markers[_ii][1] * icon_scale + _yref;
			var _alpha = _tile.terrain_markers[_ii][2];
			var _lines = _tile.terrain_markers[_ii][3];
			var _scale = _tile.terrain_markers[_ii][4];
			var _vbuff = _tile.terrain_markers[_ii][5];
			
			
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"alpha_texture"),_alpha);
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"lines_texture"),_lines);
			
			var _rot = 0;
			if _use_rot > 0	
				{	
					_rot = _tile.terrain_markers[_ii][6];
					var _nzref = (_tile.zref - height_base) / height_step;
					matrix_set(matrix_world, matrix_build(_nx, _ny, _nzref, 0, 0, _rot, _scale, _scale, 1));
					vertex_submit(_vbuff, pr_trianglelist, -1);	
				}
			else
				{
					matrix_set(matrix_world, matrix_build(_nx, _ny, height_base, 0, 0, _rot, _scale, _scale, 1));
					vertex_submit(_vbuff, pr_trianglelist, -1);	
				}
		}
}