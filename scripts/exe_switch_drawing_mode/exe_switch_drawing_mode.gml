function exe_switch_drawing_mode(_carry)
{
	switch(control_array.map_drawing_mode)
		{
			case "GLSL_ES_ver2":
				control_array.map_drawing_mode = "simplex_ver1";
				break;
			case "simplex_ver1":
				control_array.map_drawing_mode = "prerendered_ver1";
				break;
			case "prerendered_ver1":
				control_array.map_drawing_mode = "GLSL_ES_ver2";
				break;
		}
	reset_current_menu_array = 1;
	force_main_map_redraw = 1;
}