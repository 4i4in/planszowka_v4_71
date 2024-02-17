function exe_hm_to_terrain_voronoi_01(_height_map)
{
	var _part_map = exe_perform_cover(_height_map);
	
	var _arlp = array_length(map_generator.split_array)-1;
	//adapting values
	var _all_satisfied = 0;
	var _max_loops = 10;
	while(_all_satisfied < 1)
		{
			var _sattisfy = 0;
			for(var _ii = 0; _ii < array_length(map_generator.expected_cover); _ii+=2)
				{
					if map_generator.expected_cover[_ii+1] < 0	{_sattisfy++;};
					if round(map_generator.expected_cover[_ii+1]*100) == round(map_generator.result_cover[_ii+1]*100)	{_sattisfy++;};
				}
			if _sattisfy*2 == array_length(map_generator.expected_cover)
				{
					_all_satisfied = 1;
				}
			
			//adapting
			for(var _ii = 0; _ii < array_length(map_generator.expected_cover); _ii+=2)
				{
					var _value_e = map_generator.expected_cover[_ii+1];
					var _value_r = map_generator.result_cover[_ii+1];
					if _value_e > -1
						{
							if round(_value_e*100) != round(_value_r*100)
								{
									var _multipler = abs(_value_e-_value_r)*100;
									var _min_r = 0;
									var _height = 0;
									var _max_r = 0;
									var _special_case1 = 0;
									var _reverse = 1;
									if _ii == 0	
										{
											_min_r = map_generator.split_array[_arlp-(_ii+2)/2];
											_height = map_generator.split_array[_arlp-_ii/2];
											_max_r = map_generator.mapheight_max;
										}
									else if _ii+4 < array_length(map_generator.expected_cover)
										{
											if map_generator.expected_cover[_ii-1] == -1	
												{
													_reverse = -1;
													if map_generator.expected_cover[_ii+3] == -1	{_reverse *= -1;};
												};
											_min_r = map_generator.split_array[_arlp-(_ii+2)/2];
											_height = map_generator.split_array[_arlp-_ii/2];
											_max_r = map_generator.split_array[_arlp-(_ii-2)/2];
										}
									else if _ii+2 < array_length(map_generator.expected_cover)
										{
											if map_generator.expected_cover[_ii-1] == -1	
												{
													_reverse = -1;
													if map_generator.expected_cover[_ii+3] == -1	{_reverse *= -1;};
												};
											_min_r =  map_generator.mapheight_min;
											_height = map_generator.split_array[_arlp-_ii/2];
											_max_r = map_generator.split_array[_arlp-(_ii-2)/2];
										}
									else
										{
											_reverse = -1;
											_special_case1 = -2;
											_min_r = map_generator.mapheight_min;
											_height = map_generator.split_array[_arlp-(_ii-2)/2];
											_max_r = map_generator.split_array[_arlp-(_ii-2+_special_case1)/2];
										}
									
									if _value_e > _value_r	{_height-=_multipler*_reverse;};
									if _value_e < _value_r	{_height+=_multipler*_reverse;};
									if _height < _min_r {_height = _min_r + 1;};
									if _height > _max_r {_height = _max_r - 1;};
									_height = round(_height);
									map_generator.split_array[_arlp-(_ii+_special_case1)/2] = _height;
									
								}
						}
					_part_map = exe_perform_cover(_height_map);
				}
			
			_max_loops--;
			if _max_loops < 0	{_all_satisfied = 1;}
		}
	
	var _arg_list = ["shallow_water","deep_water","ocean_rifts"];
	map_generator.water_sum = exe_add_up_2nd_arguments(_arg_list);
	game_map.ground = variable_clone(_part_map);
	
	ground_minimap = draw_temporary_surface03(ground_minimap,_part_map);
}