game_time++;

exe_operate_background_function();

exe_key_reaction_01();
exe_mouse_reaction_01();

exe_secondary_mouse_reaction_01(); //draging menu

exe_current_menu_load();

exe_check_mouse_vs_move_map();
exe_check_mouse_vs_clickable_buttons();

switch(control_array.map_drawing_mode)
	{
		case "GLSL_ES_ver2":
			exe_map_drawing_loop_GLSL_ES_ver2("normal");//map
			if keyboard_check(vk_space)	{exe_draw_main_surface_GLSL_ES_ver3();}
			else						{exe_draw_main_surface_GLSL_ES_ver4("normal");}
			break;
		case "simplex_ver1":
			exe_map_drawing_loop_simplex_ver1();//map
			exe_draw_main_surface_simplex_ver1();
			break;
		case "prerendered_ver1":
			exe_map_drawing_loop_prerendered_ver1();//map
			exe_draw_main_surface_prerendered_ver1();
			break;
	}
exe_redraw_minimap();
	
exe_map_drawing_tile_xy_pos();

exe_draw_backgrounds_as_restricted_show();	

exe_draw_clickable();
exe_draw_mouseinfo();

exe_operate_deleyed_function(); //operate and draw on main surface

exe_draw_dev_restricted_show();	
exe_draw_dev_submenu();

exe_draw_background_function();

if reset_current_menu_array > 0	{control_array.current_menu_array = [];	reset_current_menu_array = 0};