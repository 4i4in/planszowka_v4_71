function exe_editor_map_menu_painting_by_mouse()
{
	if mouse_struct.mlbutt > 0	&&	mouse_struct.function_executed < 1	&&	current_restricted < 0
		{
			if control_array.current_menu == "editor_map_menu"
				{
					var _xx1 = (mouse_struct.mx + control_array.camx) div control_array.tile_size;
					var _yy1 = (mouse_struct.my + control_array.camy) div control_array.tile_size;
					
					if _xx1 < 0						{_xx1 += control_array.map_x;};
					if _xx1 > control_array.map_x-1	{_xx1 -= control_array.map_x;};
					if _yy1 < 0						{_yy1 += control_array.map_y;};
					if _yy1 > control_array.map_y-1	{_yy1 -= control_array.map_y;};
					
					if array_length(menus.editor_palete.chosen_paint) > 0
						{
							var _counter2 = 1;
							for(var _x2 = _xx1-menus.editor_palete.brush_size; _x2 < _xx1+menus.editor_palete.brush_size+1; _x2++)
								{
									for(var _y2 = _yy1-menus.editor_palete.brush_size; _y2 < _yy1+menus.editor_palete.brush_size+1; _y2++)
										{
											var _check_x = _x2; var _check_y = _y2; 
											if _check_x < 0	{_check_x+=control_array.map_x;};
											if _check_x > control_array.map_x-1	{_check_x-=control_array.map_x;};
											if _check_y < 0	{_check_y+=control_array.map_y;};
											if _check_y > control_array.map_y-1	{_check_y-=control_array.map_y;};
											
											switch(control_array.map_current_name_level)
												{
													case "ground":	exe_paint_on_ground_map(_check_x,_check_y);	break;
												};
												
											var _carry = [_check_x,_check_y,variable_clone(control_array.map_current_name_level),0];
											exe_painting_rereder_throw(_carry,-1,_counter2,-1);
											_counter2 ++;
										}
								}
							exe_throw_background_function("exe_background_refresh_screen",[],"refresh screen",100,100);
							
							exe_speed_up_cooldown([3]);
							mouse_struct.function_executed = 1;
						}
					else
						{
							var _string = "left click on : " + string(_xx1) + " | " + string(_yy1); 
							if string(_string) == string(mouse_info.txt)	{_string = "";};//delete if double click
							mouse_info.txt = _string;	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
							exe_speed_up_cooldown([5]);
							mouse_struct.function_executed = 1;
						}
					
				}
		};
}