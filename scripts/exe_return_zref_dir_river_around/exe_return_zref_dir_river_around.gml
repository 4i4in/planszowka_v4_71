function exe_return_zref_dir_river_around(_map,_this_x,_this_y,_source_height)
{
	var _lowest_around_array = [];
	
	var _lowest_zref_around = 0;
	var _lowest_dir_around = 0;
	var _lowest_new_x = -1;
	var _lowest_new_y = -1;
	for(var _dir = 0; _dir < 8; _dir++)
		{
			switch(_dir)
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
			var _new_x = _this_x + _nx;	var _new_y = _this_y + _ny;
			if _new_x < 0						{_new_x += map_generator.map_x;};
			if _new_x > map_generator.map_x-1	{_new_x -= map_generator.map_x;};
			if _new_y < 0						{_new_y += map_generator.map_y;};
			if _new_y > map_generator.map_y-1	{_new_y -= map_generator.map_y;};
			
			var _check_tile = _map[_new_x][_new_y];
			if _check_tile.zref > _lowest_zref_around
				{
					_lowest_zref_around = _check_tile.zref;
					_lowest_dir_around = _dir*45;
					_lowest_new_x = _new_x;
					_lowest_new_y = _new_y;
				};
			if _check_tile.zref > _source_height
				{
					var _lza = _check_tile.zref;
					var _lda = _dir*45;
					var _lnx = _new_x;
					var _lny = _new_y;
					var _push	=	[_lza,_lda,_lnx,_lny];
					array_push(_lowest_around_array,_push);
				};
			
		};	
	if array_length(_lowest_around_array)	< 1
		{
			var _push	=	[_lowest_zref_around,_lowest_dir_around,_lowest_new_x,_lowest_new_y];
			array_push(_lowest_around_array,_push);
		};
	
	return(_lowest_around_array);
}