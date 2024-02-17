function exe_adapt_terrain_items_ground(_local_struct,_x1,_y1,_terrain_markers_array,_map)
{
	//descriptors in exe_describe_ground
	//	used as terrain cover:	frozen_sea_plain,	deep_snow_cover,	plankton,	fog,	broken_ice, fertile,
	//	swmap,	barren,	barren_rocks
	//	used as items:
	//		jungle,	taiga,	tundra,	steppe, prairie,	savanna,
	//		wood,	forest,	grass,	swmap,
	//		dry_grass,	dry_wood,
	//		barren_rocks,	eroded_rocks,	fragile_ice_formations, natural_ice_habitats,
	
	//	storms,	strong_wind, icestorms,	snowstorms,	clear_skies,	freezing_winds,	intense_heat,	
	//	sandstorms,	desert,	headwaters,
	//	hot_caves,	intense_heat,	rain,	quiet,	extreeme_climbing,
	//	avalanche,	stable_temperatures,	
	var _descriptor_array = _local_struct.terrain_description;
	switch(_local_struct.base_name)
		{	
			case "peaks":
				_terrain_markers_array = exe_terrain_items_peaks(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
			
			case "highland":
				_terrain_markers_array = exe_terrain_items_highland(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
			
			case "lowland":
				_terrain_markers_array = exe_terrain_items_lowland(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
				
			case "shallow_water":
				_terrain_markers_array = exe_terrain_items_shallow_water(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
				
			case "deep_water":
				_terrain_markers_array = exe_terrain_items_deep_water(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
				
			case "ocean_rifts":
				_terrain_markers_array = exe_terrain_items_ocean_rifts(_local_struct,_x1,_y1,_terrain_markers_array,_map,_descriptor_array);
				break;
		}
	return(_terrain_markers_array);
}