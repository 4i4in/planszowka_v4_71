function exe_check_mouse_vs_clickable_buttons()
{
	current_restricted = exe_return_mouse_in_restricted_01();
	if  current_restricted > -1
		{
			exe_swap_mouseover_picture(mouse_struct.mx,mouse_struct.my);
			if mouse_struct.mlbutt	{	exe_left_click_icon(mouse_struct.mx,mouse_struct.my);	};
			if mouse_struct.mrbutt	{	exe_right_click_icon(mouse_struct.mx,mouse_struct.my);	};
		}
	else
		{
			exe_force_mouseover_false();
		}
	//mouse left button reaction on map
	exe_editor_map_menu_painting_by_mouse();
	
	//mouse right button reaction
	if mouse_struct.mrbutt > 0	&&	mouse_struct.function_executed < 1
		{
			//if mouse_info.txt != ""	{mouse_info.txt = "";	mouse_info.mx = -1;	mouse_info.my = -1;};
			if control_array.current_menu == "editor_map_menu"	&& current_restricted < 0
				{
					var _xx1 = (mouse_struct.mx + control_array.camx) div control_array.tile_size;
					var _yy1 = (mouse_struct.my + control_array.camy) div control_array.tile_size;
					
					if _xx1 < 0						{_xx1 += control_array.map_x;};
					if _xx1 > control_array.map_x-1	{_xx1 -= control_array.map_x;};
					if _yy1 < 0						{_yy1 += control_array.map_y;};
					if _yy1 > control_array.map_y-1	{_yy1 -= control_array.map_y;};
					
					//var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
					
					var _string =  exe_rclick_tile_to_string_editor(_xx1,_yy1);
					if string(_string) == string(mouse_info.txt)	{_string = "";};//delete if double click
					mouse_info.txt = _string;	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
					mouse_struct.function_executed = 1;
				}
		};
}