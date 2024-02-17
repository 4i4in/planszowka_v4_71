function exe_edges_to_hm(_height_map,_edge_map)
{
	for(var _ii = 0; _ii < array_length(_edge_map); _ii++)
		{
			var _x1 = _edge_map[_ii][0];
			var _y1 = _edge_map[_ii][1];
			var _col1 = _edge_map[_ii][2];
			
			var _col1red =		_col1/(256*256);
			var _col1green =	(_col1/256) mod 256;
			//var _col1blue =		_col1 mod 256;
			
			var _hm_value_here = _height_map[_x1][_y1];
			
			if _col1red == 200 && _col1green == 200
				{
					_hm_value_here -= irandom(map_generator.noise_level);
					_hm_value_here -= map_generator.noise_level;
				}
				
			if _col1red == 0 && _col1green == 200
				{
					_hm_value_here += irandom(map_generator.noise_level);
					_hm_value_here += map_generator.noise_level;
				}
				
			_height_map[_x1][_y1] = _hm_value_here;
		}

	return(_height_map);
}