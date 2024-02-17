function exe_switch_control_array_map_current_name_level(_carry)
{
	var _current = control_array.map_current_name_level;
	
	var _curent_num = -1;
	for(var _ii = 0; _ii < array_length(control_array.map_avilable_level); _ii++)
		{
			if control_array.map_avilable_level[_ii] == _current	{	_curent_num = _ii; break;};
		}
	
	if is_real(_carry[0])
		{
			var _check_num = _curent_num + _carry[0];
			if _check_num < 0	{_check_num += array_length(control_array.map_avilable_level);};
			if _check_num > array_length(control_array.map_avilable_level) -1	{_check_num -= array_length(control_array.map_avilable_level);};
		}
	else
		{
			var _check_num = -1;
			for(var _ii = 0; _ii < array_length(control_array.map_avilable_level); _ii++)
				{
					if control_array.map_avilable_level[_ii] == _carry[0]	{	_check_num = _ii; break;};
				}
		}
	var _check_name = control_array.map_avilable_level[_check_num];
	if array_length(game_map[$ _check_name]) > 0
		{
			control_array.map_current_name_level = variable_clone(_check_name);
			force_main_map_redraw = 1;
		}
	
	var _string =	"exe_switch_control_array_map_current_name_level\n _carry : " + string(_carry) +
					"\n _curent_num : " + string(_curent_num) +
					"\n _check_num : " + string(_check_num);
	mouse_info.txt = _string;	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
	
	reset_current_menu_array = 1;
}