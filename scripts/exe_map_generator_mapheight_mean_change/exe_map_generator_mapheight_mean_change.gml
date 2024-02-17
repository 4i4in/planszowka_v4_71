function exe_map_generator_mapheight_mean_change(_carry)
{
	if _carry[0] == "min"	{	_carry[0] = -256;	};
	if _carry[0] == "max"	{	_carry[0] = 256;	};
	
	map_generator.mapheight_mean += _carry[0];
	
	if map_generator.mapheight_mean < map_generator.mapheight_min
		{	map_generator.mapheight_mean = map_generator.mapheight_min;	};
		
	if map_generator.mapheight_mean > map_generator.mapheight_max
		{	map_generator.mapheight_mean = map_generator.mapheight_max;	};
		
	height_map = draw_temporary_surface04(height_map,map_generator.height_map,map_generator.mapheight_mean);
	map_generator.water_cover = exe_check_prcnt_under(map_generator.height_map,map_generator.mapheight_mean);
	
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}