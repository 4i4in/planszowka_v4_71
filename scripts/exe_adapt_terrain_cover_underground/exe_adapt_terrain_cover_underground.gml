function exe_adapt_terrain_cover_underground(_local_struct,_x1,_y1,_terrain_markers_array,_map)
{
	var _descriptor_array = _local_struct.terrain_description;
	switch(_local_struct.base_name)
		{	
			case "solid_rocks":
				_terrain_markers_array = exe_terrain_cover_solid_rocks(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
			
			case "soft_rocks":
				_terrain_markers_array = exe_terrain_cover_soft_rocks(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
			
			case "soft_earth":
				_terrain_markers_array = exe_terrain_cover_soft_earth(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
				
			case "water_caves":
				_terrain_markers_array = exe_terrain_cover_water_caves(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
		}
	return(_terrain_markers_array);
}