function exe_current_menu_load()
{
	if array_length(control_array.current_menu_array) < 1
		{
			click_restricted = [];
			menu_templates = exe_create_menu_templates();//TBD separetly
			switch(control_array.current_menu)
				{
					case "main_menu":
						control_array.current_menu_array = exe_return_menu_buttons("main_menu");
						var _push_restriction = exe_return_menu_restriction("main_menu");
						array_push(click_restricted,_push_restriction);
						
						//dev menu
						if dev_menu_on > 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("dev_control_menu01");
								var _push_restriction = exe_return_menu_restriction("dev_control_menu01");
								array_push(click_restricted,_push_restriction);
							}
						else if dev_menu_on == 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("dev_control_menu00");
								var _push_restriction = exe_return_menu_restriction("dev_control_menu00");
								array_push(click_restricted,_push_restriction);
							}
						
						//display menu
						if display_menu_on > 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("display_control_menu01");
								var _push_restriction = exe_return_menu_restriction("display_control_menu01");
								array_push(click_restricted,_push_restriction);
							}
						else if display_menu_on == 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("display_control_menu00");
								var _push_restriction = exe_return_menu_restriction("display_control_menu00");
								array_push(click_restricted,_push_restriction);
							}
						break;
						
					case "generate_map_menu":
						control_array.current_menu_array = exe_return_menu_buttons("generate_map_menu");
						var _push_restriction = exe_return_menu_restriction("generate_map_menu");
						array_push(click_restricted,_push_restriction);
						
						//dev menu
						if dev_menu_on > 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("dev_control_menu01");
								var _push_restriction = exe_return_menu_restriction("dev_control_menu01");
								array_push(click_restricted,_push_restriction);
							}
						else if dev_menu_on == 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("dev_control_menu00");
								var _push_restriction = exe_return_menu_restriction("dev_control_menu00");
								array_push(click_restricted,_push_restriction);
							}
							
						//display menu
						if display_menu_on > 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("display_control_menu01");
								var _push_restriction = exe_return_menu_restriction("display_control_menu01");
								array_push(click_restricted,_push_restriction);
							}
						else if display_menu_on == 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("display_control_menu00");
								var _push_restriction = exe_return_menu_restriction("display_control_menu00");
								array_push(click_restricted,_push_restriction);
							}
						break;
						
					case "editor_map_menu":
						control_array.current_menu_array = exe_return_menu_buttons("minimap_menu");
						var _push_restriction = exe_return_menu_restriction("minimap_menu");
						array_push(click_restricted,_push_restriction);
						
						
						control_array.current_menu_array = exe_add_menu_buttons("editor_palete_menu");
						var _push_restriction = exe_return_menu_restriction("editor_palete_menu");
						array_push(click_restricted,_push_restriction);
								
								
						//dev menu
						if dev_menu_on > 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("dev_control_menu01");
								var _push_restriction = exe_return_menu_restriction("dev_control_menu01");
								array_push(click_restricted,_push_restriction);
							}
						else if dev_menu_on == 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("dev_control_menu00");
								var _push_restriction = exe_return_menu_restriction("dev_control_menu00");
								array_push(click_restricted,_push_restriction);
							}
							
						//display menu
						if display_menu_on > 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("display_control_menu01");
								var _push_restriction = exe_return_menu_restriction("display_control_menu01");
								array_push(click_restricted,_push_restriction);
							}
						else if display_menu_on == 0
							{
								control_array.current_menu_array = exe_add_menu_buttons("display_control_menu00");
								var _push_restriction = exe_return_menu_restriction("display_control_menu00");
								array_push(click_restricted,_push_restriction);
							}
						break;
				}
		}
}