function exe_paint_delete_river(_xx1,_yy1)
{
	var _map = game_map[$ control_array.map_current_name_level];
	var _tile = _map[_xx1][_yy1];
	var _tcstruct_rivers = _tile.terrain_continuos.rivers;
	for(var _ii = 0; _ii < array_length(_tcstruct_rivers); _ii++)
		{
			var _dir = _tcstruct_rivers[_ii][0];
			var _grid_dir = _dir/45;
			
			switch(_grid_dir)
				{
					case 0: var _nx = 1; var _ny = 0; break;
					case 1: var _nx = 1; var _ny = -1; break;
					case 2: var _nx = 0; var _ny = -1; break;
					case 3: var _nx = -1; var _ny = -1; break;
					case 4: var _nx = -1; var _ny = 0; break;
					case 5: var _nx = -1; var _ny = 1; break;
					case 6: var _nx = 0; var _ny = 1; break;
					case 7: var _nx = 1; var _ny = 1; break;
				}
			var _new_x = _xx1 + _nx;	var _new_y = _yy1 + _ny;
			if _new_x < 0						{_new_x += control_array.map_x;};
			if _new_x > control_array.map_x-1	{_new_x -= control_array.map_x;};
			if _new_y < 0						{_new_y += control_array.map_y;};
			if _new_y > control_array.map_y-1	{_new_y -= control_array.map_y;};
			
			var _new_dir = (_dir + 180) mod 360;
			
			var _tile2 = _map[_new_x][_new_y];
			var _tcstruct_rivers2 = _tile2.terrain_continuos.rivers;
			var _keep_index = -1;
			for(var _kk = 0; _kk < array_length(_tcstruct_rivers2); _kk++)
				{
					var _dir2 = _tcstruct_rivers2[_kk][0];
					if _dir2 == _new_dir	{_keep_index = _kk; break;};
				}
			array_delete(_tcstruct_rivers2,_kk,1);
		}
	_tile.terrain_continuos.rivers = [];
	
	var _carry = [_xx1,_yy1,"ground",0];
	exe_throw_background_function("exe_background_render_specific_tile",_carry,"background render",100,100);
}