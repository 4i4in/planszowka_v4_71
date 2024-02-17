function exe_add_headwaters_item(_terrain_markers_array)
{	
	var _tex_marker_pictr = tex_struct._terrain_item_headwaters;
	var _tex_marker_alpha = tex_struct._terrain_item_headwaters_alpha;
	var _vbuff = vbuff_64x64_up;
			
	var _sx = tile_base_size/2;//irandom(floor(tile_base_size));
	var _sy = tile_base_size/2;//irandom(floor(tile_base_size));
	var _scale = 1.;//random_range(.4,.6);
	var _cover = irandom_range(1,array_length(_tex_marker_pictr));
	var _alpha = variable_clone(_tex_marker_alpha[_cover-1]);
	_cover = variable_clone(_tex_marker_pictr[_cover-1]);
			
	var _push = [_sx,_sy,_alpha,_cover,_scale,_vbuff];
	array_push(_terrain_markers_array,_push);
			
	return(_terrain_markers_array);
}