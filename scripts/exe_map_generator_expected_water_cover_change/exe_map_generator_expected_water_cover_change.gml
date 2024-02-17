function exe_map_generator_expected_water_cover_change(_carry)
{
	var _cover_min = 0;
	var _cover_max = 1;
	
	if _carry[0] == "min"	{	_carry[0] = -_cover_max;	};
	if _carry[0] == "max"	{	_carry[0] = _cover_max;	};
	
	map_generator.expected_water_cover += _carry[0]*0.01;
	
	if map_generator.expected_water_cover < _cover_min	{map_generator.expected_water_cover = _cover_min;};
	if map_generator.expected_water_cover > _cover_max	{map_generator.expected_water_cover = _cover_max;};
	
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}