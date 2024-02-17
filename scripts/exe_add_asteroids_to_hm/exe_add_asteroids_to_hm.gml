function exe_add_asteroids_to_hm(_height_map)
{
	for(var _ii = 0; _ii < map_generator.voronoi_points*map_generator.noise_level; _ii++)
		{
			var _circle_size = map_generator.noise_level + irandom(map_generator.noise_level);
			var _circle_x1 = irandom(map_generator.map_x-1);
			var _circle_y1 = irandom(map_generator.map_y-1);
			
			var _circle_s3 = ceil(_circle_size/3);
			
			for(var _x2 = _circle_x1 - _circle_size; _x2 < _circle_x1 + _circle_size+1; _x2++)
				{
					for(var _y2 = _circle_y1 - _circle_size; _y2 < _circle_y1 + _circle_size+1; _y2++)
						{
							var _pd = point_distance(_circle_x1,_circle_y1,_x2,_y2);
							var _switch_action = -1;
							if  _pd < _circle_size	&& _pd > _circle_size - _circle_s3	{ _switch_action = 0;}
							else if  _pd < _circle_size	&& _pd > _circle_size - _circle_s3	- _circle_s3	{ _switch_action = 1;}
							else if  _pd < _circle_size	{ _switch_action = 2;}
							
							var _new_x2 = _x2;	var _new_y2 = _y2;
							if _new_x2 < 0						{	_new_x2 += 	map_generator.map_x;	};
							if _new_x2 > map_generator.map_x-1	{	_new_x2 -= 	map_generator.map_x;	};
							if _new_y2 < 0						{	_new_y2 += 	map_generator.map_y;	};
							if _new_y2 > map_generator.map_y-1	{	_new_y2 -= 	map_generator.map_y;	};
							
							var _hm_value = _height_map[_new_x2][_new_y2];
							
							switch(_switch_action)
								{
									case 0:
										_hm_value += irandom(map_generator.noise_level)+map_generator.noise_level;
										break;
									case 1:
										_hm_value -= ceil(map_generator.noise_level/2) + irandom(map_generator.noise_level);
										break;
									case 2:
										_hm_value -= irandom(map_generator.noise_level)+map_generator.noise_level;
										break;
								}
							_height_map[_new_x2][_new_y2] = _hm_value;
						}		
				}
			
		}

	return(_height_map);
}