function exe_draw_terrain_continuos_GLSL_ES_ver2(_tile,_xref,_yref)
{
	var _base_half = control_array.tile_size/2;
	shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "fake_z"),_tile.zref);
	//rivers
	for(var _ii = 0; _ii < array_length(_tile.terrain_continuos.rivers); _ii++)
		{
			var _nx = _xref + _base_half;
			var _ny = _yref + _base_half;
			var _zrot = _tile.terrain_continuos.rivers[_ii][0];
			var _scale = _tile.terrain_continuos.rivers[_ii][1];
			var _vbuff = _tile.terrain_continuos.rivers[_ii][2];
			var _lines = _tile.terrain_continuos.rivers[_ii][3];
			var _alpha = _tile.terrain_continuos.rivers[_ii][4];
			
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"alpha_texture"),_alpha);
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"lines_texture"),_lines);
			
			//matrix_set(matrix_world, matrix_build(_nx, _ny, _tile.zref, 0, 0, 0, _scale, _scale, 1));
			matrix_set(matrix_world, matrix_build(_nx, _ny, height_base, 0, 0, _zrot, _scale, _scale, 1));
			vertex_submit(_vbuff, pr_trianglelist, -1);	
		}
	//roads	
	for(var _ii = 0; _ii < array_length(_tile.terrain_continuos.roads); _ii++)
		{
			var _nx = _xref + _base_half;
			var _ny = _yref + _base_half;
			var _zrot = _tile.terrain_continuos.roads[_ii][0];
			var _scale = _tile.terrain_continuos.roads[_ii][1];
			var _vbuff = _tile.terrain_continuos.roads[_ii][2];
			var _lines = _tile.terrain_continuos.roads[_ii][3];
			var _alpha = _tile.terrain_continuos.roads[_ii][4];
			
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"alpha_texture"),_alpha);
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"lines_texture"),_lines);
			
			//matrix_set(matrix_world, matrix_build(_nx, _ny, _tile.zref, 0, 0, 0, _scale, _scale, 1));
			matrix_set(matrix_world, matrix_build(_nx, _ny, height_base, 0, 0, _zrot, _scale, _scale, 1));
			vertex_submit(_vbuff, pr_trianglelist, -1);	
		}
}