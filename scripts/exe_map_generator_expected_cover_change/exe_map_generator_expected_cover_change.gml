function exe_map_generator_expected_cover_change(_carry)
{
	var _change_value = _carry[0];
	var _change_name = _carry[1];
	
	var _id_found = -1;
	for(var _ii = 0; _ii < array_length(map_generator.expected_cover);_ii+=2)
		{
			if map_generator.expected_cover[_ii] == _change_name	{_id_found = _ii;};
		}
	//safety switch
	if _id_found < 0
		{
			mouse_info.txt = "exe_map_generator_expected_cover_change\nfail att _id_found < 0";	
			mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
			exit;
		}
		
	if _change_value == "free"
		{
			map_generator.expected_cover[_id_found+1] = -1;
		}
	else
		{
			if map_generator.expected_cover[_id_found+1] < 0
				{
					map_generator.expected_cover[_id_found+1] = variable_clone(round(map_generator.result_cover[_id_found+1]*100)/100);
				}
			map_generator.expected_cover[_id_found+1] += _change_value*0.01;
			if map_generator.expected_cover[_id_found+1] < 0	{map_generator.expected_cover[_id_found+1] = 0;};
			if map_generator.expected_cover[_id_found+1] > 1	{map_generator.expected_cover[_id_found+1] = 1;};
		}
	
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}