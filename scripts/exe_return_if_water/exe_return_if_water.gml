function exe_return_if_water(_map,_x1,_y1)
{
	var _is_water = 0;
	var _tile = _map[_x1][_y1];
	
	if _tile.base_name == "shallow_water"	{_is_water = 1;};
	if _tile.base_name == "deep_water"		{_is_water = 1;};
	if _tile.base_name == "ocean_rifts"		{_is_water = 1;};
	
	return(_is_water);
}