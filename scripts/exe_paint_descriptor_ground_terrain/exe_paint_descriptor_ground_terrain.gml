function exe_paint_descriptor_ground_terrain(_xx1,_yy1)
{
	
	var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];

	//menus.editor_palete.chosen_paint[0]
	
	//deleting
	if menus.editor_palete.chosen_paint[2] < 0 
		{
			for(var _ii = 0; _ii < array_length(_tile.terrain_description); _ii++)
				{
					if _tile.terrain_description[_ii] == menus.editor_palete.chosen_paint[1]
						{
							array_delete(_tile.terrain_description,_ii,1); break;	
						}
				}
		}
	
	//adding
	if menus.editor_palete.chosen_paint[2] > 0 
		{
			var _descriptor_array = _tile.terrain_description;
			if exe_return_description(_descriptor_array,menus.editor_palete.chosen_paint[1]) < 1
				{
					array_push(_tile.terrain_description,variable_clone(menus.editor_palete.chosen_paint[1]));
				}
		}
		
	//reform_tile
	var _map = game_map[$ control_array.map_current_name_level];
	_tile.terrain_markers = [];
	_tile.terrain_items = [];
	_tile.terrain_cover = [];
	_tile = exe_fix_new_terrain_markers(_map,_tile,_xx1,_yy1);
	game_map[$ control_array.map_current_name_level][_xx1][_yy1] = _tile;
	if menus.editor_palete.brush_size == 0 
		{
			var _carry = [_xx1,_yy1,"ground",0];
			exe_painting_rereder_throw(_carry,1,-1,-1);
		};
		
}