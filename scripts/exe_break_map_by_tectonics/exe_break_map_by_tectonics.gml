function exe_break_map_by_tectonics(_temporary_value_map,_temp_voronoi_list)
{
	var _mark_tectonics = array_create(map_generator.map_x);
	for (var _ii = 0; _ii < map_generator.map_x; _ii++) 
		{
		    _mark_tectonics[_ii] = array_create(map_generator.map_y);
		}
		
		
	for(var _vn = 0; _vn < array_length(_temp_voronoi_list); _vn++)
		{
			var _vx1 = _temp_voronoi_list[_vn][0];
			var _vy1 = _temp_voronoi_list[_vn][1];
			var _vcol = _temp_voronoi_list[_vn][2];
			var _mdir = _temp_voronoi_list[_vn][3];
			var _bias = _temp_voronoi_list[_vn][4];
			var _step = _temp_voronoi_list[_vn][5];
			
			for(var _quadrant = 0; _quadrant < 4; _quadrant++)
				{
					var _eol_m = 0;	var _counter_m = 0;
					while(_eol_m < 1)
						{
							var _eol = 0;	var _counter = 0; var _val = _bias;	
							
							switch(_quadrant)
								{
									case 0:
										var _quadrant_dir = 90;
										var _val_dir = -_step;
										var _mdir_mod = 0;
										break;
									case 1:
										var _quadrant_dir = -90;
										var _val_dir = -_step;
										var _mdir_mod = 0;
										break;
									case 2:
										var _quadrant_dir = 90;
										var _val_dir = _step;
										var _mdir_mod = 180;
										break;
									case 3:
										var _quadrant_dir = -90;
										var _val_dir = _step;
										var _mdir_mod = 180;
										break;
								}
							
							var _current_x1 = floor(	_vx1 + lengthdir_x(_counter_m,_mdir + _quadrant_dir)	);	
							var _current_y1 = floor(	_vy1 + lengthdir_y(_counter_m,_mdir + _quadrant_dir)	);	
					
							while(_eol < 1)
								{
									var _new_x2 = floor(	_current_x1 + lengthdir_x(_counter,_mdir + _mdir_mod)	);
									var _new_y2 = floor(	_current_y1 + lengthdir_y(_counter,_mdir + _mdir_mod)	);
					
									if _new_x2 < 0						{	_new_x2 += 	map_generator.map_x;	};
									if _new_x2 > map_generator.map_x-1	{	_new_x2 -= 	map_generator.map_x;	};
									if _new_y2 < 0						{	_new_y2 += 	map_generator.map_y;	};
									if _new_y2 > map_generator.map_y-1	{	_new_y2 -= 	map_generator.map_y;	};
					
									if _temporary_value_map[_new_x2][_new_y2] == _vcol
										{
											var _normalize = _val;
											if _normalize < 0	{	_normalize = 0;	};
											if _normalize > 255	{	_normalize = 255;	};
											
											_mark_tectonics[_new_x2][_new_y2] = _normalize;
											_val += _val_dir;
											_counter++;
										}
									else	{_eol=1;};
								}
						
							if _current_x1 < 0						{	_current_x1 += 	map_generator.map_x;	};
							if _current_x1 > map_generator.map_x-1	{	_current_x1 -= 	map_generator.map_x;	};
							if _current_y1 < 0						{	_current_y1 += 	map_generator.map_y;	};
							if _current_y1 > map_generator.map_y-1	{	_current_y1 -= 	map_generator.map_y;	};
					
							if _temporary_value_map[_current_x1][_current_y1] != _vcol	{_eol_m=1;}
							else
								{
									_counter_m++;
								}

						}
				}
		}
		
	return(_mark_tectonics);
}