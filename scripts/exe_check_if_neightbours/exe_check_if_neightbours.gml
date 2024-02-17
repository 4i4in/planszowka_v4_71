function exe_check_if_neightbours(_previous_x,_previous_y,_xx1,_yy1)
{
	var _is_near = 0;
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
			var _new_x = _previous_x + _nx;	var _new_y = _previous_y + _ny;
			if _new_x < 0						{_new_x += control_array.map_x;};
			if _new_x > control_array.map_x-1	{_new_x -= control_array.map_x;};
			if _new_y < 0						{_new_y += control_array.map_y;};
			if _new_y > control_array.map_y-1	{_new_y -= control_array.map_y;};
			
			if _new_x == _xx1	&&	_new_y == _yy1	{_is_near = 1; break;};
		};
	return(_is_near);
}