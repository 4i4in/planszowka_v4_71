function exe_check_fertile(_descriptor_array)
{
	var _is_fertile = 0;
	if exe_return_description(_descriptor_array,"fertile") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.fertile[0];	};
	if exe_return_description(_descriptor_array,"barren") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.barren[0];	};
	if exe_return_description(_descriptor_array,"deep_snow_cover") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.deep_snow_cover[0];	};
	if exe_return_description(_descriptor_array,"barren_rocks") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.barren_rocks[0];	};
	if exe_return_description(_descriptor_array,"swmap") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.swmap[0];	};
	if exe_return_description(_descriptor_array,"jungle") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.jungle[0];	};
	if exe_return_description(_descriptor_array,"desert") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.desert[0];	};
	if exe_return_description(_descriptor_array,"intense_heat") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.intense_heat[0];	};
	if exe_return_description(_descriptor_array,"rain") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.rain[0];	};
	if exe_return_description(_descriptor_array,"stable_temperatures") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.stable_temperatures[0];	};
	if exe_return_description(_descriptor_array,"sandstorms") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.sandstorms[0];	};
	if exe_return_description(_descriptor_array,"freezing_winds") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.freezing_winds[0];	};
	
	if exe_return_description(_descriptor_array,"glacier") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.glacier[0];	};
	
	if exe_return_description(_descriptor_array,"steppe") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.steppe[0];	};
	if exe_return_description(_descriptor_array,"savanna") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.savanna[0];	};
	if exe_return_description(_descriptor_array,"prairie") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.prairie[0];	};
	if exe_return_description(_descriptor_array,"tundra") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.tundra[0];	};
	if exe_return_description(_descriptor_array,"taiga") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.taiga[0];	};
		
	if exe_return_description(_descriptor_array,"wood") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.wood[0];	};
	if exe_return_description(_descriptor_array,"forest") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.forest[0];	};
	if exe_return_description(_descriptor_array,"grass") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.grass[0];	};
	if exe_return_description(_descriptor_array,"dry_grass") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.dry_grass[0];	};
	if exe_return_description(_descriptor_array,"dry_wood") > 0
		{	_is_fertile += map_generator.descriptor_values_struct.dry_wood[0];	};
		
	return(_is_fertile);
}