function exe_background_map_tile_render()
{
	var _curent_x = background_function.carry[0];
	var _curent_y = background_function.carry[1];
	var _curent_terrain_level = background_function.carry[2];
	var _curent_player = background_function.carry[3];
	
	var _txt = background_function.txt;
	
	if _curent_y > control_array.map_y -1	{	_curent_x+=3; _curent_y = 0;	};
	if _curent_x > control_array.map_x -1	
		{	
			exe_end_background_function();
			//control_array.map_drawing_mode = "prerendered_ver1";
			control_array.current_menu_array = [];
			force_main_map_redraw = 1;
			exit;
		};
	
	exe_render_refresh_tile(_curent_x,_curent_y,_curent_terrain_level,_curent_player);
	_curent_y +=3;
	
	var _newline = string_count("\n", _txt);
	if _newline > 20
		{
			var _first_line = string_pos("\n", _txt);
			var _first_line_str = string_copy(_txt, 1, _first_line +1);
			_txt = string_delete(_txt,1,_first_line +1);
			var _first_line = string_pos("\n", _txt);
			_txt = string_delete(_txt,1,_first_line +1);
			_txt = string(_first_line_str) + string(_txt);
		}
	_txt +=	"\n rendering " + string(_curent_terrain_level) + " x : " + string(_curent_x) + " | y : " + string(_curent_y);
	
	background_function.carry[0] = _curent_x;
	background_function.carry[1] = _curent_y;
	background_function.carry[2] = _curent_terrain_level;
	background_function.carry[3] = _curent_player;
	background_function.txt = _txt;
}