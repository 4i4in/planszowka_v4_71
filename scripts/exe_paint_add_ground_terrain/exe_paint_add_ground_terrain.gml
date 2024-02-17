function exe_paint_add_ground_terrain(_xx1,_yy1,_counter)
{
	var _map = game_map[$ control_array.map_current_name_level];
	var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
	
	//curently in arguments var _counter = 0;	//synthetic ref to array from function exe_adapt_map_by
	//0-peaks, 1, highland and so on
	
	_tile =  exe_switch_terrain_tile(_tile,_counter);
	_tile =  exe_predescribe_tile(_tile,string(control_array.map_current_name_level));
	_tile =  exe_detail_describe_tile(_tile,string(control_array.map_current_name_level));
	game_map[$ control_array.map_current_name_level][_xx1][_yy1] = _tile;
	
	//filling tiles 3x3 with new data
	var _counter2 = 1;
	for(var _x2 = _xx1-1; _x2 < _xx1+2; _x2++)
		{
			for(var _y2 = _yy1-1; _y2 < _yy1+2; _y2++)
				{
					var _check_x = _x2; var _check_y = _y2; 
					if _check_x < 0	{_check_x+=control_array.map_x;};
					if _check_x > control_array.map_x-1	{_check_x-=control_array.map_x;};
					if _check_y < 0	{_check_y+=control_array.map_y;};
					if _check_y > control_array.map_y-1	{_check_y-=control_array.map_y;};
					
					var _tile = game_map[$ control_array.map_current_name_level][_check_x][_check_y];
					
					_tile = exe_fix_new_terrain_extensions(_map,_tile,_check_x,_check_y);
					_tile = exe_fix_new_terrain_markers(_map,_tile,_check_x,_check_y);
	
					game_map[$ control_array.map_current_name_level][_check_x][_check_y] = _tile;
					
					var _carry = [_check_x,_check_y,"ground",0];
					exe_painting_rereder_throw(_carry,_counter2,-1,-1);
					_counter2 ++;
				}
		};
	
	
	
}