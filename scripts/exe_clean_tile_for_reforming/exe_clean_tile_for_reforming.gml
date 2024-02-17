function exe_clean_tile_for_reforming(_tile,_counter)
{
	_tile.terrain_extensions = [];
	_tile.terrain_markers = [];
	_tile.terrain_items = [];
	_tile.terrain_cover = [];
	_tile.terrain_description = [];
	
	switch(control_array.map_current_name_level)
		{
			case "ground":	
				if _counter > 2 //water for ground
					{
						_tile.terrain_continuos.rivers = [];
						_tile.terrain_continuos.roads = [];
					};
				break;
		};
	return(_tile);
}