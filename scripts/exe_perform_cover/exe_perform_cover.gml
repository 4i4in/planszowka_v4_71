function exe_perform_cover(_height_map)
{
	var _mapheight_min = exe_check_sqr_array(_height_map,"min");
	var _mapheight_max = exe_check_sqr_array(_height_map,"max");
	var _mapheight_mean = exe_check_sqr_array(_height_map,"mean");
	var _split_by = (_mapheight_max - _mapheight_min)/map_generator.map_spliting;
	if array_length(map_generator.split_array) < 1
		{
			map_generator.split_array = [];
			for(var _ii = 1; _ii < map_generator.map_spliting; _ii++)
				{
					var _value = floor(_mapheight_min + _ii * _split_by);
					array_push(map_generator.split_array,_value);
				}
			array_insert(map_generator.split_array,2,_mapheight_mean);
		}
	var _part_map = exe_adapt_map_by(_height_map);
	var _terrain_cover = exe_check_prcnt_cover(_part_map);
	map_generator.result_cover = _terrain_cover;
	return(_part_map);
}