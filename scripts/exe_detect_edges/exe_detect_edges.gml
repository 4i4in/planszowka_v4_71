function exe_detect_edges(_temporary_value_map)
{
	var _edge_map = [];
	var _col1 = make_color_rgb(200,200,0);
	var _col2 = make_color_rgb(0,200,0);
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					//vertical pass right
					var _value1 = _temporary_value_map[_x1][_y1];
					
					var _x2 = _x1+1;	var _y2 = _y1;
					if _x2 > map_generator.map_x-1	{_x2 -= map_generator.map_x;};
					
					var _value2 = _temporary_value_map[_x2][_y2];
					
					if _value1 != _value2
						{
							var _push = [_x1,_y1,_col1]	;
							array_push(_edge_map,_push);
						}
						
					//horizontal pass down
					var _value1 = _temporary_value_map[_x1][_y1];
					
					var _x2 = _x1;	var _y2 = _y1+1;
					if _y2 > map_generator.map_y-1	{_y2 -= map_generator.map_y;};
					
					var _value2 = _temporary_value_map[_x2][_y2];
					
					if _value1 != _value2
						{
							var _push = [_x1,_y1,_col2]	;
							array_push(_edge_map,_push);
						}
				}
		}
		
	return(_edge_map);
}