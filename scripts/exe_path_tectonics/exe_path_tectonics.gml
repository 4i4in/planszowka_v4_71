function exe_path_tectonics(_mark_tectonics)
{
	var _zero_found = 1;
	
	while(_zero_found > 0)
		{
			_zero_found = 0;
			for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
				{
					for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
						{
							if _mark_tectonics[_x1][_y1] < 1
								{
									_zero_found++;
									var _values_found = 0;
									var _values_sum = 0;
									for(var _x2 = _x1-1; _x2 < _x1 +2; _x2++)
										{
											for(var _y2 = _y1-1; _y2 < _y1 +2; _y2++)
												{
													var _x3 = _x2;	var _y3 = _y2;
													if _x3 < 0	{_x3 += map_generator.map_x;};
													if _x3 > map_generator.map_x-1	{_x3 -= map_generator.map_x;};
													if _y3 < 0	{_y3 += map_generator.map_y;};
													if _y3 > map_generator.map_y-1	{_y3 -= map_generator.map_y;};
													
													if _mark_tectonics[_x3][_y3] > 0
														{
															_values_sum += _mark_tectonics[_x3][_y3];
															_values_found++;
														}
												}
										}
									if _values_found > 0
										{
											_mark_tectonics[_x1][_y1] = ceil(_values_sum/_values_found) + irandom(map_generator.noise_level);
										}
								}
							
						}
				}
		}

	return(_mark_tectonics);
}