function exe_paint_delete_continuos(_xx1,_yy1,_road_type,_destruction_done)
{
	var _map = game_map[$ control_array.map_current_name_level];
	var _tile = _map[_xx1][_yy1];
	var _tcstruct_rivers = _tile.terrain_continuos.roads;
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
			var _tcstruct_rivers2 = _tile2.terrain_continuos.roads;
			var _keep_index = -1;
			for(var _kk = 0; _kk < array_length(_tcstruct_rivers2); _kk++)
				{
					var _dir2 = _tcstruct_rivers2[_kk][0];
					var _type2 = _tcstruct_rivers2[_kk][8];
					if (_dir2 == _new_dir	&&	_type2 == _road_type)	{_keep_index = _kk; break;};
				}
			//_destruction_done	
			if 	_keep_index > -1
				{
					var _progres_here = _tcstruct_rivers2[_keep_index][9];
					_progres_here -= _destruction_done;
					if _progres_here < 0.1
						{
							array_delete(_tcstruct_rivers2,_kk,1);
							_tile2.terrain_continuos.roads = _tcstruct_rivers2;
						}
					else
						{
							array_set(_tcstruct_rivers2[_keep_index],0,_progres_here);
							_tile2.terrain_continuos.roads = _tcstruct_rivers2;
						}
				}
			
		}
	var _destruct_arr = [];
	for(var _kk = 0; _kk < array_length(_tcstruct_rivers); _kk++)
		{
			var _dir = _tcstruct_rivers[_kk][0];
			var _type1 = _tcstruct_rivers[_kk][8];
			if _type1 == _road_type	{array_push(_destruct_arr,_kk);};
		};
	if array_length(_destruct_arr) > 0
		{
			for(var _kk = array_length(_destruct_arr)-1; _kk > -1; _kk--)
				{
					var _pos_here = _destruct_arr[_kk];
					var _progres_here = _tcstruct_rivers[_pos_here][9];
					_progres_here -= _destruction_done;
					if _progres_here < 0.1
						{
							array_delete(_tcstruct_rivers,_kk,1);
						}
					else
						{
							array_set(_tcstruct_rivers[_keep_index],0,_progres_here);
							
						}
				}
		}
	_tile.terrain_continuos.roads = _tcstruct_rivers;
	
	var _carry = [_xx1,_yy1,"ground",0];
	exe_throw_background_function("exe_background_render_specific_tile",_carry,"background render",100,100);
}