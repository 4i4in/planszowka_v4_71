function exe_terrain_cover_peaks(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array)
{
	if exe_return_description(_descriptor_array,"deep_snow_cover") > 0
		{	_terrain_markers_array = exe_add_deep_snow_cover(_terrain_markers_array);	};
		
	if exe_return_description(_descriptor_array,"fertile") > 0
		{	_terrain_markers_array = exe_add_fertile(_terrain_markers_array);	};
	
	if exe_return_description(_descriptor_array,"barren_rocks") > 0
		{	_terrain_markers_array = exe_add_barren_rocks(_terrain_markers_array);	};	
		
	if exe_return_description(_descriptor_array,"swmap") > 0
		{	_terrain_markers_array = exe_add_swmap(_terrain_markers_array);	};	
		
	if exe_return_description(_descriptor_array,"barren") > 0
		{	_terrain_markers_array = exe_add_barren(_terrain_markers_array);	};	
		
	if exe_return_description(_descriptor_array,"fog") > 0
		{	_terrain_markers_array = exe_add_fog(_terrain_markers_array);	};
		
		
		
	return(_terrain_markers_array);
}