function exe_check_rocks(_descriptor_array)
{
	var _is_fertile = 0;
	if exe_return_description(_descriptor_array,"barren") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.barren[1];	};
	if exe_return_description(_descriptor_array,"barren_rocks") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.barren_rocks[1];	};
	if exe_return_description(_descriptor_array,"desert") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.desert[1];	};
	if exe_return_description(_descriptor_array,"intense_heat") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.intense_heat[1];	};
	if exe_return_description(_descriptor_array,"sandstorms") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.sandstorms[1];	};
	if exe_return_description(_descriptor_array,"freezing_winds") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.freezing_winds[1];	};
		
	if exe_return_description(_descriptor_array,"glacier") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.glacier[1];	};
		
	if exe_return_description(_descriptor_array,"strong_wind") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.strong_wind[1];	};
	if exe_return_description(_descriptor_array,"snowstorms") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.snowstorms[1];	};
		
	return(_is_fertile);
}