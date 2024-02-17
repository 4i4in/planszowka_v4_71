function exe_add_river(_tcstruct_rivers,_dir,_xto,_yto,_mapto)
{
	var _same_dir_found = 0;
	for(var _check = 0; _check < array_length(_tcstruct_rivers);	_check++)
		{
			if _dir == _tcstruct_rivers[_check][0]	{_same_dir_found = 1;};
		}
	if _same_dir_found < 1
		{
			var _tex_marker_pictr = tex_struct._terrain_continuos_river;
			var _tex_marker_alpha = tex_struct._terrain_continuos_river_alpha;
											
			var _cover = irandom_range(1,array_length(_tex_marker_pictr));
			var _alpha = variable_clone(_tex_marker_alpha[_cover-1]);
			_cover = variable_clone(_tex_marker_pictr[_cover-1]);
	
			if _dir mod 90 == 0	{var _scale = 0.5;}
			else	{var _scale = 0.71;};
	
			var _vbuff = vbuff_64x32_flat_continuos;
	
			var _push = [_dir,_scale,_vbuff,_cover,_alpha,_xto,_yto,_mapto];
			array_push(_tcstruct_rivers,_push);
		}
		
	return(_tcstruct_rivers);
}