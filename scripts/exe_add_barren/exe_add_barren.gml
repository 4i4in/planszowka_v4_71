function exe_add_barren(_terrain_markers_array)
{
	for(var _ii = 0; _ii < 4; _ii++)
		{
			switch(_ii)
				{
					case 0: var _ix = 1;	var _iy = 1;
						break;
					case 1: var _ix = 3;	var _iy = 1;
						break;
					case 2: var _ix = 1;	var _iy = 3;
						break;
					case 3: var _ix = 3;	var _iy = 3;
						break;
				}
			
			var _tex_marker_pictr = tex_struct._terrain_cover_barren;
			var _tex_marker_alpha = tex_struct._terrain_cover_barren_alpha;
			var _vbuff = vbuff_64x64_flat_zo;
			
			var _sx = (tile_base_size/4) * _ix + irandom(floor(tile_base_size/2)) - tile_base_size/4;
			var _sy = (tile_base_size/4) * _iy + irandom(floor(tile_base_size/2)) - tile_base_size/4;
			var _scale = random_range(0.5,1.);
			var _cover = irandom_range(1,array_length(_tex_marker_pictr));
			var _alpha = variable_clone(_tex_marker_alpha[_cover-1]);
			_cover = variable_clone(_tex_marker_pictr[_cover-1]);
			var _zrot = 0;
			
			var _push = [_sx,_sy,_alpha,_cover,_scale,_vbuff,_zrot];
			array_push(_terrain_markers_array,_push);
		}
	return(_terrain_markers_array);
}