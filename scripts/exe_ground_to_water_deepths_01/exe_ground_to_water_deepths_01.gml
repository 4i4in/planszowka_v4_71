function exe_ground_to_water_deepths_01()
{
	var _temporary_water_deepths = variable_clone(game_map.ground);
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _ground_tile = game_map.ground[_x1][_y1];
					
					var _name = "none";
					var _color = c_black;
					var _teritory_name = "";
					var _zref = height_base + 7*height_step;
					
					switch(_ground_tile.base_name)
						{
							case "deep_water":
								_name = "abbysal_plain";
								_color = map_generator.legal_water_deepths_colors[0];
								_teritory_name = "depths of " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
							case "ocean_rifts":
								_name = "open_depths";
								_color = map_generator.legal_water_deepths_colors[1];
								_teritory_name = "depths of " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
							
						}
					var _wind = [0.,0.,0.,0.];//direction,magnitude
					var _climate = _ground_tile.climate;
					_temporary_water_deepths[_x1][_y1] = exe_return_new_tile_struct(_name,_color,_teritory_name,_zref,_climate,_wind);
				}
		}
	game_map.water_deepths = variable_clone(_temporary_water_deepths);
	
	water_deepths_minimap = draw_temporary_surface03(water_deepths_minimap,_temporary_water_deepths);
}