function exe_rclick_tile_to_string_editor(_xx1,_yy1)
{
	var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
	var _string = "x: " + string(_xx1) + " | y: " + string(_yy1) +  " | z: " + string(_tile.zref) + "\n";
	_string += "terrain : " + string(_tile.base_name) + " | region : " + string(_tile.naming_1st_teritory)  + "\n";
	_string += "description  : " + string(_tile.terrain_description) + "\n";
	_string += "climate  : " + string(_tile.climate) + "\n";
	_string += "wind dir  : " + string(_tile.wind[0]) + " | magnitude : " + string(_tile.wind[1]) + "\n";
	_string += "terrain_extensions : " + string(array_length(_tile.terrain_extensions)) + "\n";
	_string += "terrain_markers  : " + string(array_length(_tile.terrain_markers)) + "\n";
	_string += "terrain_items  : " + string(array_length(_tile.terrain_items)) + "\n";
	_string += "terrain_cover  : " + string(array_length(_tile.terrain_cover)) + "\n";
	_string += "zref  : " + string(_tile.zref) + "\n";
	
	for(var _tcs = 0; _tcs < array_length(_tile.terrain_continuos.rivers); _tcs++)
		{
			_string += "river dir : " + string(_tile.terrain_continuos.rivers[_tcs][0])	
					+ " | to map : " + string(_tile.terrain_continuos.rivers[_tcs][7]) + "\n";
		}
	for(var _tcs = 0; _tcs < array_length(_tile.terrain_continuos.roads); _tcs++)
		{
			_string += string(_tile.terrain_continuos.roads[_tcs][8])	
					+ " | progress : " + string(_tile.terrain_continuos.roads[_tcs][9])
					+ " | dir : " + string(_tile.terrain_continuos.roads[_tcs][0])
					+ " | to map : " + string(_tile.terrain_continuos.roads[_tcs][7]) + "\n";
		}
	//clipboard_set_text(_tile);
	return(_string);
}