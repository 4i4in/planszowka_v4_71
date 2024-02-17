function exe_autogenerate_rivers(_map)
{
	
	var _check_me_arr = [];
	var _check_me_arr2 = [];
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					var _tcstruct_rivers = _tile.terrain_continuos.rivers;
					var _descriptor_array = _tile.terrain_description;
					if exe_return_description(_descriptor_array,"headwaters") > 0
						{
							var _source_height = _tile.zref;
							var _lowest_around = exe_return_zref_dir_river_around(_map,_x1,_y1,_source_height);
							
							var _choices = array_length(_lowest_around);
							if _choices > 1
								{
									var _this_many_choices = irandom_range(1,ceil(_choices/2));
								}
							else	{var _this_many_choices = 1};
							if _this_many_choices < 1	{_this_many_choices = 1;};
							for(var _current = 0; _current < _this_many_choices; _current++)
								{
									_choices = array_length(_lowest_around);
									var _roll_dice = irandom_range(1,_choices)-1;
									
									var _dir = _lowest_around[_roll_dice][1];
									var _new_x = _lowest_around[_roll_dice][2];
									var _new_y = _lowest_around[_roll_dice][3];
									var _is_water = exe_return_if_water(_map,_new_x,_new_y);
									if _is_water < 1
										{
											var _tile2 = _map[_new_x][_new_y];
											var _tcstruct_rivers2 = _tile2.terrain_continuos.rivers;
											var _new_dir = (_dir + 180) mod 360;
											
											var _keep_1 = array_length(_tcstruct_rivers);
											var _keep_2 = array_length(_tcstruct_rivers2);
											
											_tcstruct_rivers = exe_add_river(_tcstruct_rivers,_dir,_new_x,_new_y,"ground");
											_tcstruct_rivers2 = exe_add_river(_tcstruct_rivers2,_new_dir,_x1,_y1,"ground");
											
											if array_length(_tcstruct_rivers) > _keep_1	&&	array_length(_tcstruct_rivers2) > _keep_2
												{
													var _push = [_new_x,_new_y];
													array_push(_check_me_arr,_push);
												}
										}
									else
										{
											var _tile2 = _map[_new_x][_new_y];
											var _tcstruct_rivers2 = _tile2.terrain_continuos.rivers;
											var _new_dir = (_dir + 180) mod 360;
											
											_tcstruct_rivers = exe_add_river(_tcstruct_rivers,_dir,_new_x,_new_y,"ground");
											_tcstruct_rivers2 = exe_add_river_delta(_tcstruct_rivers2,_new_dir,_x1,_y1,"ground");
										}
									
									array_delete(_lowest_around,_roll_dice,1);
									
								}
						}
				}		
		}
		
	while(array_length(_check_me_arr) > 0)	
		{
			var _current = array_pop(_check_me_arr);
			var _x1 = _current[0];	var _y1 = _current[1];
			var _tile = _map[_x1][_y1];
			var _tcstruct_rivers = _tile.terrain_continuos.rivers;
			var _source_height = _tile.zref;
			var _lowest_around = exe_return_zref_dir_river_around(_map,_x1,_y1,_source_height);
							
			var _choices = array_length(_lowest_around);
			if _choices > 1
				{
					var _this_many_choices = irandom_range(1,ceil(_choices/2));
				}
			else	{var _this_many_choices = 1};
			if _this_many_choices < 1	{_this_many_choices = 1;};
			for(var _current = 0; _current < _this_many_choices; _current++)
				{
					_choices = array_length(_lowest_around);
					var _roll_dice = irandom_range(1,_choices)-1;
									
					var _dir = _lowest_around[_roll_dice][1];
					var _new_x = _lowest_around[_roll_dice][2];
					var _new_y = _lowest_around[_roll_dice][3];
					var _is_water = exe_return_if_water(_map,_new_x,_new_y);
					if _is_water < 1
						{
							var _tile2 = _map[_new_x][_new_y];
							var _tcstruct_rivers2 = _tile2.terrain_continuos.rivers;
							var _new_dir = (_dir + 180) mod 360;
											
							var _keep_1 = array_length(_tcstruct_rivers);
							var _keep_2 = array_length(_tcstruct_rivers2);
											
							_tcstruct_rivers = exe_add_river(_tcstruct_rivers,_dir,_new_x,_new_y,"ground");
							_tcstruct_rivers2 = exe_add_river(_tcstruct_rivers2,_new_dir,_x1,_y1,"ground");
											
							if array_length(_tcstruct_rivers) > _keep_1	&&	array_length(_tcstruct_rivers2) > _keep_2
								{
									var _push = [_new_x,_new_y];
									array_push(_check_me_arr,_push);
								}
						}
					else
						{
							var _tile2 = _map[_new_x][_new_y];
							var _tcstruct_rivers2 = _tile2.terrain_continuos.rivers;
							var _new_dir = (_dir + 180) mod 360;
											
							_tcstruct_rivers = exe_add_river(_tcstruct_rivers,_dir,_new_x,_new_y,"ground");
							_tcstruct_rivers2 = exe_add_river_delta(_tcstruct_rivers2,_new_dir,_x1,_y1,"ground");
						}
									
					array_delete(_lowest_around,_roll_dice,1);
									
				}		
					
					
			if array_length(_check_me_arr) < 1
				{
					_check_me_arr = variable_clone(_check_me_arr2);
					_check_me_arr2 = [];
				}
		}
	return(_map);
}