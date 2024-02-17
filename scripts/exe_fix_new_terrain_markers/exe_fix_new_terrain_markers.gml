function exe_fix_new_terrain_markers(_map,_local_struct,_x1,_y1)
{
	var _terrain_level = control_array.map_current_name_level;
	_local_struct.terrain_markers = [];
	_local_struct.terrain_cover = [];
	_local_struct.terrain_items = [];
	var _terrain_markers_array = [];
	var _terrain_cover_array = [];
	var _terrain_items_array = [];
	
	//same switch as exe_add_terrain_markers_to
	switch(_terrain_level)
		{
			case "ground":
				_terrain_markers_array = exe_adapt_terrain_markers_ground(_local_struct,_x1,_y1,_terrain_markers_array,_map);
				_terrain_cover_array = exe_adapt_terrain_cover_ground(_local_struct,_x1,_y1,_terrain_cover_array,_map);
				_terrain_items_array = exe_adapt_terrain_items_ground(_local_struct,_x1,_y1,_terrain_items_array,_map);
				break;
		}
	_local_struct.terrain_markers = _terrain_markers_array;
	_local_struct.terrain_cover = _terrain_cover_array;
	_local_struct.terrain_items = _terrain_items_array;
	
	return(_local_struct);
}