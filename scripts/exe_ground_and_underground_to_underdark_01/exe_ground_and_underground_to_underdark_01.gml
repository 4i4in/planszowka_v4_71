function exe_ground_and_underground_to_underdark_01()
{
	var _temporary_underdark = variable_clone(game_map.ground);
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _ground_tile =			 game_map.ground[_x1][_y1];
					
					var _name = "none";
					var _color = c_black;
					var _teritory_name = "";
					var _zref =  height_base + 7*height_step;
					
					switch(_ground_tile.base_name)
						{
							case "peaks":
								var _rnd =  choose(0,1,2,3,5,6);
								var _terrain = exe_return_underdark_terrain(_rnd,_ground_tile);
								_name = _terrain[0];
								_color = _terrain[1];
								_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
								
							case "highland":
								var _rnd =  choose(3,4,5);
								var _terrain = exe_return_underdark_terrain(_rnd,_ground_tile);
								_name = _terrain[0];
								_color = _terrain[1];
								_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
								
							case "lowland":
								var _rnd =  choose(4);
								var _terrain = exe_return_underdark_terrain(_rnd,_ground_tile);
								_name = _terrain[0];
								_color = _terrain[1];
								_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
								
							case "shallow_water":
								var _rnd =  choose(0,1,4,5,6);
								var _terrain = exe_return_underdark_terrain(_rnd,_ground_tile);
								_name = _terrain[0];
								_color = _terrain[1];
								_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
							case "deep_water":
								var _rnd =  choose(0,1,2,3,4,5,6);
								var _terrain = exe_return_underdark_terrain(_rnd,_ground_tile);
								_name = _terrain[0];
								_color = _terrain[1];
								_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
						}
					var _wind = [0.,0.,0.,0.];//direction,magnitude
					var _climate = _ground_tile.climate;
					_temporary_underdark[_x1][_y1] = exe_return_new_tile_struct(_name,_color,_teritory_name,_zref,_climate,_wind);
				}
		}
	game_map.underdark = variable_clone(_temporary_underdark);
	
	underdark_minimap = draw_temporary_surface03(underdark_minimap,_temporary_underdark);
}