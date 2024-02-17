function exe_paint_add_continuos(_xx1,_yy1,_road_type,_construction_progress)
{
	if array_length(menus.editor_palete.chosen_paint) < 2
		{
			array_push(menus.editor_palete.chosen_paint,_xx1,_yy1);
			exit;
		};
	if array_length(menus.editor_palete.chosen_paint) > 2
		{
			var _previous_x = menus.editor_palete.chosen_paint[1];
			var _previous_y = menus.editor_palete.chosen_paint[2];
			
			if _previous_x == _xx1	&&	_previous_y == _yy1	{exit;}
			else
				{
					var _is_around = exe_check_if_neightbours(_previous_x,_previous_y,_xx1,_yy1);
					if _is_around < 1
						{
							menus.editor_palete.chosen_paint[1] = _xx1;
							menus.editor_palete.chosen_paint[2] = _yy1;
							exit;
						}
					else
						{
							var _map = game_map[$ control_array.map_current_name_level];
							
							var _is_water0 = exe_return_if_water(_map,_previous_x,_previous_y);
							var _is_water1 = exe_return_if_water(_map,_xx1,_yy1);
							
							//if both water it do not make sense
							if _is_water0 + _is_water1 > 1	
								{
									menus.editor_palete.chosen_paint[1] = _xx1;
									menus.editor_palete.chosen_paint[2] = _yy1;
									exit;
								};
							
							var _tile = game_map[$ control_array.map_current_name_level][_previous_x][_previous_y];
							var _tile2 = _map[_xx1][_yy1];
							var _tcstruct_rivers0 = _tile.terrain_continuos.roads;
							var _tcstruct_rivers2 = _tile2.terrain_continuos.roads;
							var _dir = exe_return_dir(_previous_x,_previous_y,_xx1,_yy1);
							var _new_dir = (_dir + 180) mod 360;
							
							if _is_water0 > 0	{	_tcstruct_rivers0 = exe_add_continuos_harbor(_tcstruct_rivers0,_dir,_previous_x,_previous_y,"ground",_road_type,_construction_progress);	}
							else				{	_tcstruct_rivers0 = exe_add_continuos(_tcstruct_rivers0,_dir,_previous_x,_previous_y,"ground",_road_type,_construction_progress);	};
							
							if _is_water1 > 0	{	_tcstruct_rivers2 = exe_add_continuos_harbor(_tcstruct_rivers2,_new_dir,_xx1,_yy1,"ground",_road_type,_construction_progress);	}
							else				{	_tcstruct_rivers2 = exe_add_continuos(_tcstruct_rivers2,_new_dir,_xx1,_yy1,"ground",_road_type,_construction_progress);	};
							
							menus.editor_palete.chosen_paint[1] = _xx1;
							menus.editor_palete.chosen_paint[2] = _yy1;
							
							var _carry = [_previous_x,_previous_y,"ground",0];
							exe_throw_background_function("exe_background_render_specific_tile",_carry,"background render",100,100);
							var _carry = [_xx1,_yy1,"ground",0];
							exe_throw_background_function("exe_background_render_specific_tile",_carry,"background render",100,100);
						}
				}
		};
}