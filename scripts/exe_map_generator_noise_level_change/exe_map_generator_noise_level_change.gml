function exe_map_generator_noise_level_change(_carry)
{
	var _noise_max = map_generator.map_x;
	if _noise_max > map_generator.map_y	{	_noise_max = map_generator.map_y;	};
	_noise_max = ceil(sqrt(_noise_max));
	
	if _carry[0] == "min"	{	_carry[0] = -_noise_max;	};
	if _carry[0] == "max"	{	_carry[0] = _noise_max;	};
	
	map_generator.noise_level += _carry[0];
	
	if map_generator.noise_level < 1			{map_generator.noise_level = 1;};
	if map_generator.noise_level > _noise_max	{map_generator.noise_level = _noise_max;};
	
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}