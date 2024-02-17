function exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha)
{
	for(var _xsn = 0; _xsn < array_length(_same_neighbours);_xsn++)
		{
			for(var _ysn = 0; _ysn < array_length(_same_neighbours[_xsn]);_ysn++)
				{
					var _sn_val = _same_neighbours[_xsn][_ysn];
					if 	_sn_val > 0
						{
							var _sx = tile_base_size/2 + sign(_xsn-1) * tile_base_size/2 + sign(_xsn-1) * irandom(floor(tile_base_size/(8*_sn_val)	));	
							var _sy = tile_base_size/2 + sign(_ysn-1) * tile_base_size/2 + sign(_ysn-1) * irandom(floor(tile_base_size/(8*_sn_val)	));
										
							var _scale = random_range(1,2)/_sn_val;
										
							var _cover = irandom_range(1,array_length(_tex_marker_pictr));
							var _alpha = variable_clone(_tex_marker_alpha[_cover-1]);
							_cover = variable_clone(_tex_marker_pictr[_cover-1]);
							
							var _rot = irandom(359);
							
							var _push = [_sx,_sy,_alpha,_cover,_scale,_vbuff,_rot];
							array_push(_terrain_markers_array,_push);
						}
				}
		}
	return(_terrain_markers_array);
}