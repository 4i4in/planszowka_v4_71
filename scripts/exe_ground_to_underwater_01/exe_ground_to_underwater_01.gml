function exe_ground_to_underwater_01()
{
	var _temporary_underwater = variable_clone(game_map.ground);
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _ground_tile = game_map.ground[_x1][_y1];
					
					var _name = "";
					var _color = c_black;
					var _teritory_name = "none";
					var _zref =  height_base + 7*height_step;
					
					switch(_ground_tile.base_name)
						{
							case "shallow_water":
								_name = "shelf";
								_color = map_generator.legal_underwater_colors[0];
								_teritory_name = "sea of " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
							case "deep_water":
								_name = "open_sea";
								_color = map_generator.legal_underwater_colors[1];
								_teritory_name = "sea of " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
							case "ocean_rifts":
								_name = "open_sea";
								_color = map_generator.legal_underwater_colors[1];
								_teritory_name = "sea of " + string(_ground_tile.naming_1st_teritory);
								_zref = _ground_tile.zref;
								break;
							
						}
					var _wind = [0.,0.,0.,0.];//direction,magnitude
					var _climate = _ground_tile.climate;
					_temporary_underwater[_x1][_y1] = exe_return_new_tile_struct(_name,_color,_teritory_name,_zref,_climate,_wind);
				}
		}
	game_map.underwater = variable_clone(_temporary_underwater);
	
	underwater_minimap = draw_temporary_surface03(underwater_minimap,_temporary_underwater);
}