function exe_adapt_water_cover_level_to_expected()
{
	map_generator.water_cover = exe_check_prcnt_under(map_generator.height_map,map_generator.mapheight_mean);
	
	
	if map_generator.water_cover != map_generator.expected_water_cover
		{
			var _nearest_found = -1;	var _nearest_diff = -1;
			var _searching_direction = 0;
			var _correct = -1;
			while(_correct < 0)
				{
					if map_generator.water_cover < map_generator.expected_water_cover	{_searching_direction = 1;};
					if map_generator.water_cover > map_generator.expected_water_cover	{_searching_direction = -1;};
					if map_generator.water_cover == map_generator.expected_water_cover	{exit;};
					if _nearest_found < 0	&&	_nearest_diff < 0
						{
							_nearest_found = map_generator.mapheight_mean;
							_nearest_diff = abs(map_generator.expected_water_cover - map_generator.water_cover);
						}
					else
						{
							if 	abs(map_generator.expected_water_cover - map_generator.water_cover) < _nearest_diff
								{	
									_nearest_diff = abs(map_generator.expected_water_cover - map_generator.water_cover);
									_nearest_found = map_generator.mapheight_mean;
								}
							else
								{
									map_generator.mapheight_mean = _nearest_found;
									map_generator.water_cover = exe_check_prcnt_under(map_generator.height_map,map_generator.mapheight_mean);
									exit; //corect
								}
						}
					exe_map_generator_mapheight_mean_change([_searching_direction]);
				}
		}
}