function exe_draw_tile_extensions_GLSL_ES_ver2(_tile,_xref,_yref)
{
	for(var _ii = 0; _ii < array_length(_tile.terrain_extensions); _ii++)
		{
			var _nx = _tile.terrain_extensions[_ii][0] * icon_scale + _xref;
			var _ny = _tile.terrain_extensions[_ii][1] * icon_scale + _yref;
			var _extscale = _tile.terrain_extensions[_ii][2] * icon_scale;
			var _cover = _tile.terrain_extensions[_ii][3];
			var _zrot = _tile.terrain_extensions[_ii][4];
			
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass1,"alpha_texture"),_cover);
			matrix_set(matrix_world, matrix_build(_nx, _ny, _tile.zref, 0, 0, _zrot, _extscale, _extscale, 1));
			vertex_submit(vbuff_32x32, pr_trianglelist, -1);	
		}
}