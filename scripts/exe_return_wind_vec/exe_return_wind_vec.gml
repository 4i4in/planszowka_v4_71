function exe_return_wind_vec(_map,_this_x,_this_y,_dir,_arr_pos)
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
	
	var _vec = _map[_new_x][_new_y][$ "wind"][_arr_pos];
	return(_vec);
}