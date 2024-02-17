function exe_terrain_cover_shallow_water(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array)
{
	if exe_return_description(_descriptor_array,"frozen_sea_plain") > 0
		{	_terrain_markers_array = exe_add_frozen_sea_plain(_terrain_markers_array);	};
		
	if exe_return_description(_descriptor_array,"broken_ice") > 0
		{	_terrain_markers_array = exe_add_broken_ice(_terrain_markers_array);	};
	
	if exe_return_description(_descriptor_array,"deep_snow_cover") > 0
		{	_terrain_markers_array = exe_add_deep_snow_cover(_terrain_markers_array);	};
		
	if exe_return_description(_descriptor_array,"plankton") > 0
		{	_terrain_markers_array = exe_add_plankton(_terrain_markers_array);	};	
	
	if exe_return_description(_descriptor_array,"fog") > 0
		{	_terrain_markers_array = exe_add_fog(_terrain_markers_array);	};
		
	return(_terrain_markers_array);
}