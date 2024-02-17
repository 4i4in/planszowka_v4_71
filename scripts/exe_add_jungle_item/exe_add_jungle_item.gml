function exe_add_jungle_item(_terrain_markers_array)
{	
	var _tex_marker_pictr = tex_struct._terrain_item_jungle;
	var _tex_marker_alpha = tex_struct._terrain_item_jungle_alpha;
	var _vbuff = vbuff_64x64_up;
			
	var _sx = irandom(floor(tile_base_size));
	var _sy = irandom(floor(tile_base_size));
	var _scale = random_range(.7,1.);
	var _cover = irandom_range(1,array_length(_tex_marker_pictr));
	var _alpha = variable_clone(_tex_marker_alpha[_cover-1]);
	_cover = variable_clone(_tex_marker_pictr[_cover-1]);
			
	var _push = [_sx,_sy,_alpha,_cover,_scale,_vbuff];
	array_push(_terrain_markers_array,_push);
			
	return(_terrain_markers_array);
}