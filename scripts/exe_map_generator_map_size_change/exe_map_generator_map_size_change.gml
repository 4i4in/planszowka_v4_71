function exe_map_generator_map_size_change(_carry)
{
	if _carry[0] == "min"	{	_carry[0] = -map_generator.map_max_size;	};
	if _carry[1] == "min"	{	_carry[1] = -map_generator.map_max_size;	};
	if _carry[0] == "max"	{	_carry[0] = map_generator.map_max_size;	};
	if _carry[1] == "max"	{	_carry[1] = map_generator.map_max_size;	};
	
	map_generator.map_x += _carry[0] * map_generator.map_size_step;
	map_generator.map_y += _carry[1] * map_generator.map_size_step;
	
	if map_generator.map_x < 64	{map_generator.map_x = 64;};
	if map_generator.map_y < 64	{map_generator.map_y = 64;};
	
	if map_generator.map_x > map_generator.map_max_size	{map_generator.map_x = map_generator.map_max_size;};
	if map_generator.map_y > map_generator.map_max_size	{map_generator.map_y = map_generator.map_max_size;};
	
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}